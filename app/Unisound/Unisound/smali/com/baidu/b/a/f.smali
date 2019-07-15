.class Lcom/baidu/b/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/b/a/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/b/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/b/a/f$a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/b/a/f;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/baidu/b/a/f;->c:Lcom/baidu/b/a/f$a;

    iput-object p1, p0, Lcom/baidu/b/a/f;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/b/a/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/b/a/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/baidu/b/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/b/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/baidu/b/a/f;->c:Lcom/baidu/b/a/f$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/b/a/f;->c:Lcom/baidu/b/a/f$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/baidu/b/a/f$a;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/baidu/b/a/f;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/baidu/b/a/f;->b:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/HashMap;Lcom/baidu/b/a/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/b/a/f$a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/b/a/f;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/f;->b:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/baidu/b/a/f;->c:Lcom/baidu/b/a/f$a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/b/a/g;

    invoke-direct {v1, p0}, Lcom/baidu/b/a/g;-><init>(Lcom/baidu/b/a/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
