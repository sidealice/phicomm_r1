.class final Lorg/xutils/http/a$1;
.super Ljava/lang/Object;
.source "RequestParamsHelper.java"

# interfaces
.implements Lorg/xutils/http/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/xutils/http/a$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 101
    :try_start_0
    invoke-static {p2}, Lorg/xutils/http/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lorg/xutils/http/a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 104
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "parse RequestParams to json failed"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
