.class Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;


# direct methods
.method constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;)V
    .locals 0

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;->this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;->this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->access$000()Lrx/Observer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
