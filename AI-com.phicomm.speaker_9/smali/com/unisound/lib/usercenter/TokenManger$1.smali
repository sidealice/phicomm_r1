.class Lcom/unisound/lib/usercenter/TokenManger$1;
.super Landroid/os/Handler;
.source "TokenManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/usercenter/TokenManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/usercenter/TokenManger;


# direct methods
.method constructor <init>(Lcom/unisound/lib/usercenter/TokenManger;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger$1;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger$1;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-static {v0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->access$100(Lcom/unisound/lib/usercenter/TokenManger;Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger$1;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-static {p1}, Lcom/unisound/lib/usercenter/TokenManger;->access$000(Lcom/unisound/lib/usercenter/TokenManger;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger$1;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/TokenManger;->startUpdateTokenTask()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
