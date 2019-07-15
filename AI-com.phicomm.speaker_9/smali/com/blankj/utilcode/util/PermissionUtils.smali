.class public final Lcom/blankj/utilcode/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/PermissionUtils$d;,
        Lcom/blankj/utilcode/util/PermissionUtils$a;,
        Lcom/blankj/utilcode/util/PermissionUtils$c;,
        Lcom/blankj/utilcode/util/PermissionUtils$b;,
        Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/blankj/utilcode/util/PermissionUtils;


# instance fields
.field private c:Lcom/blankj/utilcode/util/PermissionUtils$b;

.field private d:Lcom/blankj/utilcode/util/PermissionUtils$c;

.field private e:Lcom/blankj/utilcode/util/PermissionUtils$a;

.field private f:Lcom/blankj/utilcode/util/PermissionUtils$d;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->a()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$d;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-object p0
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    .line 73
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 72
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 77
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    invoke-virtual {p1, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Landroid/app/Activity;)V

    .line 217
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$1;-><init>(Lcom/blankj/utilcode/util/PermissionUtils;)V

    invoke-interface {p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils$b;->a(Lcom/blankj/utilcode/util/PermissionUtils$b$a;)V

    const/4 p1, 0x1

    move v1, p1

    :cond_1
    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    :cond_2
    return v1
.end method

.method static synthetic a(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Lcom/blankj/utilcode/util/PermissionUtils;
    .locals 1

    .line 38
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils;

    return-object v0
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 100
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Lcom/blankj/utilcode/util/PermissionUtils$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/Set;

    .line 252
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Lcom/blankj/utilcode/util/PermissionUtils$c;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$c;->b()V

    goto :goto_1

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Lcom/blankj/utilcode/util/PermissionUtils$c;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$c;->a()V

    .line 259
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Lcom/blankj/utilcode/util/PermissionUtils$c;

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Lcom/blankj/utilcode/util/PermissionUtils$a;

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/Set;

    .line 263
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_2

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 267
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Lcom/blankj/utilcode/util/PermissionUtils$a;

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/blankj/utilcode/util/PermissionUtils$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 264
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Lcom/blankj/utilcode/util/PermissionUtils$a;

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/blankj/utilcode/util/PermissionUtils$a;->a(Ljava/util/List;)V

    .line 270
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Lcom/blankj/utilcode/util/PermissionUtils$a;

    .line 272
    :cond_7
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 273
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Landroid/app/Activity;)V

    .line 278
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->c()V

    return-void
.end method
