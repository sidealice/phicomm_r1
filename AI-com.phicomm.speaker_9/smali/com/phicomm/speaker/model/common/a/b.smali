.class public abstract Lcom/phicomm/speaker/model/common/a/b;
.super Lcom/phicomm/speaker/model/common/a/a;
.source "JsonArrayAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lorg/json/JSONArray;
.end method

.method protected abstract a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V
.end method

.method protected b(Lcom/phicomm/speaker/model/common/a/g;I)V
    .locals 1

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/model/common/a/b;->a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
