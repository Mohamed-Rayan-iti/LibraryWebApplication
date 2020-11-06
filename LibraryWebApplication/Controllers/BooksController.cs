using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LibraryWebApplication.Models;

namespace LibraryWebApplication.Controllers
{
    public class BooksController : Controller
    {
        private DatabaseLibraryEntities db = new DatabaseLibraryEntities();

        // GET: Books
        public ActionResult Index()
        {
            var books = db.Books.Include(b => b.Author).Include(b => b.Category).Include(b => b.Place).Include(b => b.Publisher);
            return View(books.ToList());
        }

        // GET: Books/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Book book = db.Books.Find(id);
            if (book == null)
            {
                return HttpNotFound();
            }
            return View(book);
        }

        // GET: Books/Create
        public ActionResult Create()
        {
            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "AuthorName");
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName");
            ViewBag.PlaceID = new SelectList(db.Places, "PlaceID", "PlaceName");
            ViewBag.PublisherID = new SelectList(db.Publishers, "PublisherID", "PublisherName");
            return View();
        }

        // POST: Books/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BookID,BookName,BookReleaseDate,BookPagesNumber,SubCategory,BookPrice,BookCount,CategoryID,AuthorID,PublisherID,PlaceID")] Book book)
        {
            if (ModelState.IsValid)
            {
                db.Books.Add(book);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "AuthorName", book.AuthorID);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", book.CategoryID);
            ViewBag.PlaceID = new SelectList(db.Places, "PlaceID", "PlaceName", book.PlaceID);
            ViewBag.PublisherID = new SelectList(db.Publishers, "PublisherID", "PublisherName", book.PublisherID);
            return View(book);
        }

        // GET: Books/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Book book = db.Books.Find(id);
            if (book == null)
            {
                return HttpNotFound();
            }
            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "AuthorName", book.AuthorID);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", book.CategoryID);
            ViewBag.PlaceID = new SelectList(db.Places, "PlaceID", "PlaceName", book.PlaceID);
            ViewBag.PublisherID = new SelectList(db.Publishers, "PublisherID", "PublisherName", book.PublisherID);
            return View(book);
        }

        // POST: Books/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BookID,BookName,BookReleaseDate,BookPagesNumber,SubCategory,BookPrice,BookCount,CategoryID,AuthorID,PublisherID,PlaceID")] Book book)
        {
            if (ModelState.IsValid)
            {
                db.Entry(book).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "AuthorName", book.AuthorID);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", book.CategoryID);
            ViewBag.PlaceID = new SelectList(db.Places, "PlaceID", "PlaceName", book.PlaceID);
            ViewBag.PublisherID = new SelectList(db.Publishers, "PublisherID", "PublisherName", book.PublisherID);
            return View(book);
        }

        // GET: Books/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Book book = db.Books.Find(id);
            if (book == null)
            {
                return HttpNotFound();
            }
            return View(book);
        }

        // POST: Books/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Book book = db.Books.Find(id);
            db.Books.Remove(book);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
