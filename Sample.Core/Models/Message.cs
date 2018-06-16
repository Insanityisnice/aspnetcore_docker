using System;
using Microsoft.EntityFrameworkCore;

namespace Sample.Core.Models
{
    public class Message
    {
        public int Id { get; set; }
        public string Text { get; set; }
    }
}

namespace Sample.Core.Data
{
    public class MessageContext : DbContext
    {
        public MessageContext(DbContextOptions<MessageContext> options) : base(options)
        {
        }

        public DbSet<Models.Message> Messages { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Models.Message>().ToTable("Message");
        }
    }
}