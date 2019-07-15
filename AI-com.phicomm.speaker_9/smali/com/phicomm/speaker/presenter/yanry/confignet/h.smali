.class public Lcom/phicomm/speaker/presenter/yanry/confignet/h;
.super Ljava/lang/Object;
.source "ConfigByApPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/b/e;


# instance fields
.field private a:Lcom/phicomm/speaker/model/confignet/ApClient;

.field private b:Lcom/phicomm/speaker/b/f;

.field private c:Lcom/phicomm/speaker/b/h;

.field private d:Ljava/lang/Runnable;

.field private e:I

.field private f:Lcom/phicomm/speaker/model/common/f;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    .line 64
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->b()Lcom/phicomm/speaker/PhApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->d:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 259
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->e()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b:Lcom/phicomm/speaker/b/f;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 185
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e:I

    .line 186
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    .line 187
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 188
    const-class p2, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/model/common/d;

    .line 189
    const-class v0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/b;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/i;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;Lcom/phicomm/speaker/model/common/d;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/common/f;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Phicomm_R1_"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/confignet/ApClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    return-object p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->d:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/b/h;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->e()V

    .line 175
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V

    return-void
.end method

.method final synthetic a(Ljava/io/IOException;)V
    .locals 3

    const-string v0, "request fail on error: %s"

    const/4 v1, 0x1

    .line 248
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b:Lcom/phicomm/speaker/b/f;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 272
    iput-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b:Lcom/phicomm/speaker/b/f;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    if-ne p1, v0, :cond_1

    .line 275
    iput-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 151
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e:I

    .line 152
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->d:Ljava/lang/Runnable;

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Z)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->e()V

    goto :goto_0

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-static {p1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->fromJson(Ljava/lang/String;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/b/h;->a(Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V

    .line 236
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "data error!"

    const/4 v1, 0x0

    .line 238
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/h;->b()V

    .line 240
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 222
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e:I

    .line 223
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    .line 224
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 225
    const-class p2, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/model/common/d;

    .line 226
    const-class v0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/b;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/j;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;Lcom/phicomm/speaker/model/common/d;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Ljava/lang/String;Lcom/phicomm/speaker/model/common/d;)V
    .locals 2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    const-string v1, "api/configwifi"

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/m;

    invoke-direct {v1, p0, p2, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/m;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Lcom/phicomm/speaker/model/common/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/n;

    invoke-direct {v1, p0, p2, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/n;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Lcom/phicomm/speaker/model/common/d;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    .line 251
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(ZLcom/phicomm/speaker/b/f;)V
    .locals 2

    const/4 v0, 0x2

    .line 157
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e:I

    .line 158
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b:Lcom/phicomm/speaker/b/f;

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Z)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 163
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->c()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final synthetic a(Lcom/phicomm/speaker/model/common/d;Ljava/io/IOException;)Z
    .locals 1

    .line 248
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/o;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/o;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic a(Lcom/phicomm/speaker/model/common/d;Ljava/lang/String;)Z
    .locals 1

    .line 230
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/p;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/p;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public b(Lcom/phicomm/speaker/b/h;)V
    .locals 2

    .line 180
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V

    return-void
.end method

.method final synthetic b(Ljava/io/IOException;)V
    .locals 3

    const-string v0, "request fail on error: %s"

    const/4 v1, 0x1

    .line 210
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->b()V

    goto :goto_0

    .line 198
    :cond_0
    :try_start_0
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "data error!"

    const/4 v1, 0x0

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c:Lcom/phicomm/speaker/b/h;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/h;->b()V

    .line 202
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final synthetic b(Ljava/lang/String;Lcom/phicomm/speaker/model/common/d;)V
    .locals 2

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    const-string v1, "api/getwifilist"

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/q;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Lcom/phicomm/speaker/model/common/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/r;

    invoke-direct {v1, p0, p2, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/r;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Lcom/phicomm/speaker/model/common/d;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    .line 213
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final synthetic b(Lcom/phicomm/speaker/model/common/d;Ljava/io/IOException;)Z
    .locals 1

    .line 210
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/s;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/s;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic b(Lcom/phicomm/speaker/model/common/d;Ljava/lang/String;)Z
    .locals 1

    .line 193
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/k;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/k;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 2

    const-string v0, "release."

    const/4 v1, 0x0

    .line 281
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->f:Lcom/phicomm/speaker/model/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    .line 283
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-class v0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/b;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/l;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/l;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->d()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic e()V
    .locals 3

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    const-string v1, "api/quit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
