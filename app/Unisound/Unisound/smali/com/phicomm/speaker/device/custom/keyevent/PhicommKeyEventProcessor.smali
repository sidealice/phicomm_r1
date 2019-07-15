.class public Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;
.super Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;
.source "PhicommKeyEventProcessor.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CLICK:I = 0x1

.field public static final TYPE_DOUBLE_CLICK:I = 0x2

.field public static final TYPE_LONG_CLICK:I = 0x5

.field public static final TYPE_TRIPLE_CLICK:I = 0x3


# instance fields
.field private mMsgCenter:Landroid/os/MessageDispatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;Landroid/content/Context;)V
    .locals 1
    .param p1, "controller"    # Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;-><init>(Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;)V

    .line 30
    invoke-static {p2}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->mMsgCenter:Landroid/os/MessageDispatchManager;

    .line 31
    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    packed-switch p2, :pswitch_data_0

    .line 56
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->onClick()V

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->onDoubleClick()V

    goto :goto_0

    .line 50
    :pswitch_3
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->onTripleClick()V

    goto :goto_0

    .line 53
    :pswitch_4
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->onLongClick()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public register()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x100

    invoke-virtual {v0, p0, v1}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 35
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->mMsgCenter:Landroid/os/MessageDispatchManager;

    invoke-virtual {v0, p0}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 39
    return-void
.end method
