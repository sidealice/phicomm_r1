.class public Lme/shaohui/advancedluban/a;
.super Ljava/lang/Object;
.source "Luban.java"


# static fields
.field private static a:Ljava/lang/String; = "luban_disk_cache"


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lme/shaohui/advancedluban/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lme/shaohui/advancedluban/b;

    invoke-direct {v0, p1}, Lme/shaohui/advancedluban/b;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 201
    sget-object v0, Lme/shaohui/advancedluban/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lme/shaohui/advancedluban/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 216
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const-string p0, "Luban"

    const/4 p1, 0x6

    .line 223
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Luban"

    const-string p1, "default disk cache dir is null"

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Lme/shaohui/advancedluban/a;
    .locals 1

    .line 61
    new-instance v0, Lme/shaohui/advancedluban/a;

    invoke-static {p0}, Lme/shaohui/advancedluban/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lme/shaohui/advancedluban/a;-><init>(Ljava/io/File;)V

    .line 62
    iput-object p1, v0, Lme/shaohui/advancedluban/a;->b:Ljava/io/File;

    .line 63
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lme/shaohui/advancedluban/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lme/shaohui/advancedluban/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lme/shaohui/advancedluban/a;"
        }
    .end annotation

    .line 68
    new-instance v0, Lme/shaohui/advancedluban/a;

    invoke-static {p0}, Lme/shaohui/advancedluban/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lme/shaohui/advancedluban/a;-><init>(Ljava/io/File;)V

    .line 69
    iput-object p1, v0, Lme/shaohui/advancedluban/a;->c:Ljava/util/List;

    const/4 p0, 0x0

    .line 70
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    iput-object p0, v0, Lme/shaohui/advancedluban/a;->b:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a(I)Lme/shaohui/advancedluban/a;
    .locals 1

    .line 80
    iget-object v0, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    iput p1, v0, Lme/shaohui/advancedluban/b;->f:I

    return-object p0
.end method

.method public a()Lrx/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Lme/shaohui/advancedluban/c;

    iget-object v1, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    invoke-direct {v0, v1}, Lme/shaohui/advancedluban/c;-><init>(Lme/shaohui/advancedluban/b;)V

    .line 178
    iget-object v1, p0, Lme/shaohui/advancedluban/a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/c;->a(Ljava/io/File;)Lrx/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lme/shaohui/advancedluban/d;)V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lme/shaohui/advancedluban/a;->a()Lrx/c;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->b(Lrx/f;)Lrx/c;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/a$3;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/a$3;-><init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/d;)V

    invoke-virtual {v0, v1}, Lrx/c;->a(Lrx/b/b;)Lrx/c;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/a$1;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/a$1;-><init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/d;)V

    new-instance v2, Lme/shaohui/advancedluban/a$2;

    invoke-direct {v2, p0, p1}, Lme/shaohui/advancedluban/a$2;-><init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/d;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Lrx/c;->a(Lrx/b/b;Lrx/b/b;)Lrx/j;

    return-void
.end method

.method public a(Lme/shaohui/advancedluban/e;)V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lme/shaohui/advancedluban/a;->b()Lrx/c;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->b(Lrx/f;)Lrx/c;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/a$6;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/a$6;-><init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/e;)V

    .line 153
    invoke-virtual {v0, v1}, Lrx/c;->a(Lrx/b/b;)Lrx/c;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/a$4;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/a$4;-><init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/e;)V

    new-instance v2, Lme/shaohui/advancedluban/a$5;

    invoke-direct {v2, p0, p1}, Lme/shaohui/advancedluban/a$5;-><init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/e;)V

    .line 159
    invoke-virtual {v0, v1, v2}, Lrx/c;->a(Lrx/b/b;Lrx/b/b;)Lrx/j;

    return-void
.end method

.method public b(I)Lme/shaohui/advancedluban/a;
    .locals 1

    .line 100
    iget-object v0, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    iput p1, v0, Lme/shaohui/advancedluban/b;->a:I

    return-object p0
.end method

.method public b()Lrx/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/c<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lme/shaohui/advancedluban/c;

    iget-object v1, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    invoke-direct {v0, v1}, Lme/shaohui/advancedluban/c;-><init>(Lme/shaohui/advancedluban/b;)V

    .line 187
    iget-object v1, p0, Lme/shaohui/advancedluban/a;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/c;->a(Ljava/util/List;)Lrx/c;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lme/shaohui/advancedluban/a;
    .locals 1

    .line 110
    iget-object v0, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    iput p1, v0, Lme/shaohui/advancedluban/b;->b:I

    return-object p0
.end method

.method public d(I)Lme/shaohui/advancedluban/a;
    .locals 1

    .line 120
    iget-object v0, p0, Lme/shaohui/advancedluban/a;->d:Lme/shaohui/advancedluban/b;

    iput p1, v0, Lme/shaohui/advancedluban/b;->c:I

    return-object p0
.end method
