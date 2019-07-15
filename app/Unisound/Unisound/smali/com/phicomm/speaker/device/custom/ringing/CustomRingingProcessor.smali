.class public Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;
.super Ljava/lang/Object;
.source "CustomRingingProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/api/CustomApiListener;


# instance fields
.field private mRingingHandler:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V
    .locals 0
    .param p1, "ringingHandler"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;->mRingingHandler:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .line 16
    return-void
.end method


# virtual methods
.method public onCustomEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 25
    .end local p2    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 21
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;->mRingingHandler:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->onRingAudition(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
