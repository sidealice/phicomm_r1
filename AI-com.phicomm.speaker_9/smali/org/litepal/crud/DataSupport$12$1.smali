.class Lorg/litepal/crud/DataSupport$12$1;
.super Ljava/lang/Object;
.source "DataSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/DataSupport$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/DataSupport$12;

.field final synthetic val$rowsAffected:I


# direct methods
.method constructor <init>(Lorg/litepal/crud/DataSupport$12;I)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lorg/litepal/crud/DataSupport$12$1;->this$0:Lorg/litepal/crud/DataSupport$12;

    iput p2, p0, Lorg/litepal/crud/DataSupport$12$1;->val$rowsAffected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lorg/litepal/crud/DataSupport$12$1;->this$0:Lorg/litepal/crud/DataSupport$12;

    iget-object v0, v0, Lorg/litepal/crud/DataSupport$12;->val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->getListener()Lorg/litepal/crud/callback/UpdateOrDeleteCallback;

    move-result-object v0

    iget v1, p0, Lorg/litepal/crud/DataSupport$12$1;->val$rowsAffected:I

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/UpdateOrDeleteCallback;->onFinish(I)V

    return-void
.end method
