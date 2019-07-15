.class public Lcom/alibaba/mtl/appmonitor/c/e;
.super Lorg/json/JSONObject;
.source "ReuseJSONObject.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/c/e;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/mtl/appmonitor/c/e;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    instance-of v2, v1, Lcom/alibaba/mtl/appmonitor/c/b;

    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    check-cast v1, Lcom/alibaba/mtl/appmonitor/c/b;

    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
