.class public Lcom/unisound/vui/data/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/unisound/vui/data/a/a;


# instance fields
.field private c:Lcom/unisound/vui/data/d/b;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/data/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/data/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/data/a/a;->d:Landroid/content/Context;

    new-instance v0, Lcom/unisound/vui/data/d/b;

    invoke-direct {v0, p1}, Lcom/unisound/vui/data/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;
    .locals 2

    sget-object v0, Lcom/unisound/vui/data/a/a;->b:Lcom/unisound/vui/data/a/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/unisound/vui/data/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/data/a/a;->b:Lcom/unisound/vui/data/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/data/a/a;

    invoke-direct {v0, p0}, Lcom/unisound/vui/data/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/vui/data/a/a;->b:Lcom/unisound/vui/data/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unisound/vui/data/a/a;->b:Lcom/unisound/vui/data/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/b;->a()Lcom/unisound/vui/data/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/b;->c()Lcom/unisound/vui/data/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/d/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/unisound/vui/data/entity/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/b;->c()Lcom/unisound/vui/data/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/d/f;->a(Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/b;->b()Lcom/unisound/vui/data/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/unisound/vui/data/entity/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/b;->c()Lcom/unisound/vui/data/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/d/f;->b(Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/a/a;->c:Lcom/unisound/vui/data/d/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/b;->c()Lcom/unisound/vui/data/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/d/f;->a()V

    return-void
.end method
