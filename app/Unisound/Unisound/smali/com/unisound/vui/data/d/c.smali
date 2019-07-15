.class public abstract Lcom/unisound/vui/data/d/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/unisound/vui/data/c/c$a;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public c:Lcom/unisound/vui/data/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/data/e/b;

    invoke-direct {v0}, Lcom/unisound/vui/data/e/b;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/data/d/c;->c:Lcom/unisound/vui/data/e/b;

    new-instance v0, Lcom/unisound/vui/data/c/c$a;

    const-string v1, "uniInfo-db"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/unisound/vui/data/c/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
