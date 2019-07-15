.class public Lcom/unisound/vui/data/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/unisound/vui/data/c/b;

.field private c:Lcom/unisound/vui/data/c/b;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/vui/data/b/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/b/a;->a(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/b/a;->b:Lcom/unisound/vui/data/c/b;

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/b/a;->b(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/b/a;->c:Lcom/unisound/vui/data/c/b;

    return-void
.end method

.method private a(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/b;
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/vui/data/c/c$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/data/c/c;

    invoke-direct {v1, v0}, Lcom/unisound/vui/data/c/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/d;->a()Lcom/unisound/vui/data/c/b;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/b;
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/vui/data/c/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/data/c/c;

    invoke-direct {v1, v0}, Lcom/unisound/vui/data/c/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/d;->a()Lcom/unisound/vui/data/c/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/b/a;->b:Lcom/unisound/vui/data/c/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/b;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
