.class Lorg/xutils/http/HttpManagerImpl$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$TypedCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/http/HttpManagerImpl;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xutils/http/HttpManagerImpl;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lorg/xutils/http/HttpManagerImpl$a;->a:Lorg/xutils/http/HttpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lorg/xutils/http/HttpManagerImpl$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getLoadType()Ljava/lang/reflect/Type;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/xutils/http/HttpManagerImpl$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
