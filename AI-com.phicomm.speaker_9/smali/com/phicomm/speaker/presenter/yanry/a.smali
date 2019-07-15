.class public abstract Lcom/phicomm/speaker/presenter/yanry/a;
.super Lcom/phicomm/speaker/model/common/f;
.source "CustomWakeNamePresenter.java"


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/yanry/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/e/b;->e(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 96
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a$3;-><init>(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    const-string v0, "ready to set wakename is : %s"

    const/4 v1, 0x1

    .line 111
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "https://home.phicomm.com/v1/soundbox/wake_up_word"

    .line 117
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "wake_up_word"

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a$4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/a$4;-><init>(Lcom/phicomm/speaker/presenter/yanry/a;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected a(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/p;->a()V

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/a;->a()V

    :cond_1
    return-void
.end method

.method protected abstract a(ZI)V
.end method

.method protected abstract b()V
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x4e20

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(J)V

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    const-string v1, "https://home.phicomm.com/v1/common/words/check_sensitive_words"

    .line 35
    invoke-static {v1}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v1

    const-string v2, "words"

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
