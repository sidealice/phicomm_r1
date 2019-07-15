.class public abstract Lcom/baidu/location/d/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field public static g:I

.field protected static o:I


# instance fields
.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:[B

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/baidu/location/d/a;->g:I

    sput v0, Lcom/baidu/location/d/e;->g:I

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/d/e;->a:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/d/e;->b:I

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/d/e;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/d/e;->i:I

    iput-object v1, p0, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/d/e;->k:Ljava/util/Map;

    iput-object v1, p0, Lcom/baidu/location/d/e;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/d/e;->m:[B

    iput-object v1, p0, Lcom/baidu/location/d/e;->n:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    sput-object v0, Lcom/baidu/location/d/e;->a:Ljava/lang/String;

    sget v0, Lcom/baidu/location/d/a;->d:I

    :goto_1
    return v0

    :cond_1
    const-string v0, "10.0.0.172"

    goto :goto_0

    :cond_2
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    sput-object v0, Lcom/baidu/location/d/e;->a:Ljava/lang/String;

    sget v0, Lcom/baidu/location/d/a;->d:I

    goto :goto_1

    :cond_3
    const-string v0, "10.0.0.200"

    goto :goto_2

    :cond_4
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget v0, Lcom/baidu/location/d/a;->e:I

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "10.0.0.172"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/d/e;->a:Ljava/lang/String;

    sget v0, Lcom/baidu/location/d/a;->d:I

    goto :goto_1

    :cond_7
    const-string v1, "10.0.0.200"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/baidu/location/d/e;->a:Ljava/lang/String;

    sget v0, Lcom/baidu/location/d/a;->d:I

    goto :goto_1

    :cond_8
    sget v0, Lcom/baidu/location/d/a;->e:I

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/baidu/location/d/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/d/e;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/d/e;->c()I

    move-result v0

    sput v0, Lcom/baidu/location/d/e;->g:I

    return-void
.end method

.method private c()I
    .locals 4

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget v0, Lcom/baidu/location/d/a;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget v0, Lcom/baidu/location/d/a;->g:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget v0, Lcom/baidu/location/d/a;->h:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/baidu/location/d/a;->f:I

    goto :goto_0

    :cond_4
    invoke-static {v1, v0}, Lcom/baidu/location/d/e;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v0, Lcom/baidu/location/d/a;->g:I

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Z)V
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/d/g;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/location/d/g;-><init>(Lcom/baidu/location/d/e;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/baidu/location/d/g;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/d/h;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/d/h;-><init>(Lcom/baidu/location/d/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/d/h;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    new-instance v0, Lcom/baidu/location/d/f;

    invoke-direct {v0, p0}, Lcom/baidu/location/d/f;-><init>(Lcom/baidu/location/d/e;)V

    invoke-virtual {v0}, Lcom/baidu/location/d/f;->start()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "loc.map.baidu.com"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/d/e;->a(ZLjava/lang/String;)V

    return-void
.end method
