.class public Lcom/alibaba/sdk/android/feedback/xblink/c/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->d:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->e:Z

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->f:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->g:I

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->h:I

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->i:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "HttpRequest init error, url is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->e:Z

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->b:[B

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->h:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->e:Z

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->f:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->i:Ljava/lang/String;

    return-object v0
.end method
