.class Lcom/phicomm/speaker/presenter/yanry/j$3;
.super Lcom/phicomm/speaker/net/a/a;
.source "SelectWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/j;Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    const-string v0, "http error(%s): %s"

    const/4 v1, 0x2

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/l;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-direct {p2, p0, v0}, Lcom/phicomm/speaker/presenter/yanry/l;-><init>(Lcom/phicomm/speaker/presenter/yanry/j$3;Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 2

    const-string p2, "result: %s."

    const/4 v0, 0x1

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :try_start_0
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p2, v0}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/presenter/yanry/j;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 102
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/j;->c(Lcom/phicomm/speaker/presenter/yanry/j;)Lorg/json/JSONArray;

    move-result-object p2

    const-string v0, "\u5c0f\u8baf\u5c0f\u8baf"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "wake_up_words"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 104
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v1, p2, :cond_1

    .line 105
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5c0f\u8baf\u5c0f\u8baf"

    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/j;->c(Lcom/phicomm/speaker/presenter/yanry/j;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/i;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/j;->c(Lcom/phicomm/speaker/presenter/yanry/j;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Lorg/json/JSONArray;)V

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 112
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, -0x2

    const-string p2, "\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/j$3;->a(ILjava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/m;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-direct {p2, p0, v0}, Lcom/phicomm/speaker/presenter/yanry/m;-><init>(Lcom/phicomm/speaker/presenter/yanry/j$3;Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method final synthetic b(Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$3;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    return-void
.end method
