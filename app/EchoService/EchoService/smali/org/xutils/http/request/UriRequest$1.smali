.class Lorg/xutils/http/request/UriRequest$1;
.super Ljava/lang/Object;
.source "UriRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/request/UriRequest;->save2Cache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/http/request/UriRequest;


# direct methods
.method constructor <init>(Lorg/xutils/http/request/UriRequest;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest$1;->this$0:Lorg/xutils/http/request/UriRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/request/UriRequest$1;->this$0:Lorg/xutils/http/request/UriRequest;

    iget-object v1, v1, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    iget-object v2, p0, Lorg/xutils/http/request/UriRequest$1;->this$0:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1, v2}, Lorg/xutils/http/loader/Loader;->save2Cache(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
