.class Landroid/os/MessageDispatchManager$MsgRecvFlaged;
.super Ljava/lang/Object;
.source "MessageDispatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageDispatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgRecvFlaged"
.end annotation


# instance fields
.field mFlags:I

.field mRecv:Landroid/os/MessageDispatchManager$MessageReceiver;

.field final synthetic this$0:Landroid/os/MessageDispatchManager;


# direct methods
.method public constructor <init>(Landroid/os/MessageDispatchManager;Landroid/os/MessageDispatchManager$MessageReceiver;I)V
    .locals 0
    .param p2, "recv"    # Landroid/os/MessageDispatchManager$MessageReceiver;
    .param p3, "flags"    # I

    .prologue
    .line 105
    iput-object p1, p0, Landroid/os/MessageDispatchManager$MsgRecvFlaged;->this$0:Landroid/os/MessageDispatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Landroid/os/MessageDispatchManager$MsgRecvFlaged;->mRecv:Landroid/os/MessageDispatchManager$MessageReceiver;

    .line 107
    iput p3, p0, Landroid/os/MessageDispatchManager$MsgRecvFlaged;->mFlags:I

    .line 108
    return-void
.end method
