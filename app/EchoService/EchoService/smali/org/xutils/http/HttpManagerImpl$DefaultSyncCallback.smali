.class Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;
.super Ljava/lang/Object;
.source "HttpManagerImpl.java"

# interfaces
.implements Lorg/xutils/common/Callback$TypedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultSyncCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$TypedCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final resultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/xutils/http/HttpManagerImpl;


# direct methods
.method public constructor <init>(Lorg/xutils/http/HttpManagerImpl;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;->this$0:Lorg/xutils/http/HttpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;->resultType:Ljava/lang/Class;

    .line 82
    return-void
.end method


# virtual methods
.method public getLoadType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;->resultType:Ljava/lang/Class;

    return-object v0
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0
    .param p1, "cex"    # Lorg/xutils/common/Callback$CancelledException;

    .prologue
    .line 102
    .local p0, "this":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "isOnCallback"    # Z

    .prologue
    .line 97
    .local p0, "this":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    return-void
.end method

.method public onFinished()V
    .locals 0

    .prologue
    .line 107
    .local p0, "this":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method
