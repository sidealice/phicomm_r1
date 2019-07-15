.class final Lorg/xutils/http/RequestParamsHelper$1;
.super Ljava/lang/Object;
.source "RequestParamsHelper.java"

# interfaces
.implements Lorg/xutils/http/RequestParamsHelper$ParseKVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$jo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/xutils/http/RequestParamsHelper$1;->val$jo:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    :try_start_0
    invoke-static {p2}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 102
    iget-object v1, p0, Lorg/xutils/http/RequestParamsHelper$1;->val$jo:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parse RequestParams to json failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
