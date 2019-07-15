.class public Lcom/unisound/vui/data/b/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/unisound/vui/data/c/a/g;

.field private c:Lcom/unisound/vui/data/c/a/g;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/vui/data/b/a/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/b/a/h;->a(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/b/a/h;->b:Lcom/unisound/vui/data/c/a/g;

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/b/a/h;->b(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/b/a/h;->c:Lcom/unisound/vui/data/c/a/g;

    return-void
.end method

.method private a(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/a/g;
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/vui/data/c/c$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/data/c/c;

    invoke-direct {v1, v0}, Lcom/unisound/vui/data/c/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/d;->h()Lcom/unisound/vui/data/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/a/g;
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/vui/data/c/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/data/c/c;

    invoke-direct {v1, v0}, Lcom/unisound/vui/data/c/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/d;->h()Lcom/unisound/vui/data/c/a/g;

    move-result-object v0

    return-object v0
.end method
