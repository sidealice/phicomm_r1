.class Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;
.super Ljava/lang/Object;
.source "PhicommPlayer.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhicommReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 699
    const-string v3, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p4

    check-cast v2, Landroid/os/ParcelableUtil;

    invoke-virtual {v2}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const/16 v2, 0x9

    if-eq p2, v2, :cond_0

    const/16 v2, 0xd

    if-eq p2, v2, :cond_0

    const/16 v2, 0x10

    if-eq p2, v2, :cond_0

    const/16 v2, 0x13

    if-eq p2, v2, :cond_0

    const/16 v2, 0xe

    if-eq p2, v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local p4    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 712
    .restart local p4    # "obj":Ljava/lang/Object;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 779
    :pswitch_0
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: default receive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_1
    const-string v2, "PhicommPlayer"

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u65b0\u6b4c\u7684\u6d88\u606f\u4e86"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 716
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2, v6}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$402(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 717
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static {v2, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$500(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    .line 718
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$600(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 719
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$700(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    goto :goto_0

    .line 722
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_2
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u6b4c\u66f2\u7684\u56de\u8c03\u4e86, currentItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :pswitch_3
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 727
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$700(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 728
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: \u6211\u6536\u5230\u6682\u505c\u64ad\u653e\u7684\u6d88\u606f\u4e86, currentItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 731
    :pswitch_4
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 732
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2, v6}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$402(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 733
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$600(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 734
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$700(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 735
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: \u6211\u6536\u5230\u6062\u590d\u64ad\u653e\u7684\u6d88\u606f\u4e86, currentItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v4, v4, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :pswitch_5
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 739
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const-string v3, "none"

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$802(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 740
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$900(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 741
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$700(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 742
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 743
    const-string v2, "PhicommPlayer"

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u505c\u6b62\u64ad\u653e\u7684\u6d88\u606f\u4e86"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 746
    :pswitch_6
    const-string v2, "PhicommPlayer"

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u4e0a\u4e00\u9996\u7684\u6d88\u606f\u4e86"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 749
    :pswitch_7
    const-string v2, "PhicommPlayer"

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u4e0b\u4e00\u9996\u7684\u6d88\u606f\u4e86"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    :pswitch_8
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static {v2, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$500(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_0

    .line 756
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_9
    const-string v3, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u6307\u5b9a\u6b4c\u66f2\u7684\u6d88\u606f\u4e86"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v2, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    goto/16 :goto_0

    .line 760
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_a
    const-string v3, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: received current play mode message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p4

    check-cast v2, Landroid/os/ParcelableUtil;

    .line 761
    invoke-virtual {v2}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-static {v3, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static {v2, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1000(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_0

    .line 765
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_b
    const-string v3, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMsg: receive play error message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p4

    check-cast v2, Landroid/os/ParcelableUtil;

    .line 766
    invoke-virtual {v2}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-static {v3, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static {v2, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_0

    .line 770
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_c
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static {v2, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_0

    .line 773
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_d
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 774
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "requestPageIndex"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 775
    .local v1, "page":Ljava/lang/Integer;
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received msg(query item list), page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1300(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)V

    goto/16 :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method
