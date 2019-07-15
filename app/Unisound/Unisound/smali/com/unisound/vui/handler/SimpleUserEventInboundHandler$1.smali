.class Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;->a:Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;, "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler$1;->a:Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupTimeOut()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
