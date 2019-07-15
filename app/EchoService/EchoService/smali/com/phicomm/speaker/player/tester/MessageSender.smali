.class public Lcom/phicomm/speaker/player/tester/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMusicPlayMode(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 80
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 81
    return-void
.end method

.method public static getMusicPlayName(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 65
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 66
    return-void
.end method

.method public static getMusicPlayState(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 101
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 102
    return-void
.end method

.method public static nextMusicPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 60
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 61
    return-void
.end method

.method public static pauseMusicPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 40
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 41
    return-void
.end method

.method public static prevMusicPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 55
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 56
    return-void
.end method

.method public static sendInputKey(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keycode"    # I

    .prologue
    .line 14
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 15
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 16
    return-void
.end method

.method public static sendMusicCommand(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # I

    .prologue
    .line 19
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 20
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 21
    return-void
.end method

.method public static sendMusicPlayList(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 25
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "[{\"title\":\"\u9189\u8d64\u58c1\",\"url\":null,\"itemId\":\"100_kw_MUSIC_438658\"},{\"title\":\"\u6c5f\u5357\",\"url\":null,\"itemId\":\"100_kw_MUSIC_93157\"},{\"title\":\"\u5c0f\u9152\u7a9d\",\"url\":null,\"itemId\":\"100_kw_MUSIC_442554\"},{\"title\":\"\u53ef\u60dc\u6ca1\u5982\u679c\",\"url\":null,\"itemId\":\"100_kw_MUSIC_6182865\"},{\"title\":\"\u66f9\u64cd\",\"url\":null,\"itemId\":\"100_kw_MUSIC_125802\"},{\"title\":\"\u4fee\u70bc\u7231\u60c5\",\"url\":null,\"itemId\":\"100_kw_MUSIC_3244328\"},{\"title\":\"\u5979\u8bf4\",\"url\":null,\"itemId\":\"100_kw_MUSIC_891712\"},{\"title\":\"\u5f53\u4f60\",\"url\":null,\"itemId\":\"100_kw_MUSIC_27781154\"},{\"title\":\"\u7f8e\u4eba\u9c7c\",\"url\":null,\"itemId\":\"100_kw_MUSIC_93151\"},{\"title\":\"\u4e00\u5343\u5e74\u4ee5\u540e\",\"url\":null,\"itemId\":\"100_kw_MUSIC_106364\"}]"

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 36
    return-void
.end method

.method public static sendMusicPlayListIndex(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 85
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/16 v2, 0xf

    const/4 v3, 0x0

    const-string v4, "{\"index\":0,\"itemList\":[{\"itemId\":\"100_kw_MUSIC_15198210\",\"title\":\"\u7231\u8981\u600e\u4e48\u8bf4\u51fa\u53e3\"},{\"itemId\":\"100_kw_MUSIC_1120967\",\"title\":\"\u90a3\u4e9b\u4f60\u5f88\u5192\u9669\u7684\u68a6\"},{\"itemId\":\"100_kw_MUSIC_6741127\",\"title\":\"\u4e0d\u4e3a\u8c01\u800c\u4f5c\u7684\u6b4c\"},{\"itemId\":\"100_kw_MUSIC_442549\",\"title\":\"\u4e0d\u6f6e\u4e0d\u7528\u82b1\u94b1\"},{\"itemId\":\"100_kw_MUSIC_908194\",\"title\":\"\u7231\u7b11\u7684\u773c\u775b\"},{\"itemId\":\"100_kw_MUSIC_6684180\",\"title\":\"\u80cc\u5bf9\u80cc\u62e5\u62b1\"},{\"itemId\":\"100_kw_MUSIC_6192853\",\"title\":\"\u751f\u751f\"},{\"itemId\":\"100_kw_MUSIC_908196\",\"title\":\"\u8bb0\u5f97\"},{\"itemId\":\"100_kw_MUSIC_34555316\",\"title\":\"\u8f93\u4e86\u4f60\u8d62\u4e86\u4e16\u754c\u53c8\u5982\u4f55\"},{\"itemId\":\"100_kw_MUSIC_9961546\",\"title\":\"\u6211\u6000\u5ff5\u7684\"},{\"itemId\":\"100_kw_MUSIC_93154\",\"title\":\"\u8c46\u6d46\u6cb9\u6761\"},{\"itemId\":\"100_kw_MUSIC_442546\",\"title\":\"Always Online\"},{\"itemId\":\"100_kw_MUSIC_6192858\",\"title\":\"\u624b\u5fc3\u7684\u8537\u8587\"},{\"itemId\":\"100_kw_MUSIC_409466\",\"title\":\"AlwaysOnline\"},{\"itemId\":\"100_kw_MUSIC_1120909\",\"title\":\"\u5b66\u4e0d\u4f1a\"},{\"itemId\":\"100_kw_MUSIC_13349605\",\"title\":\"\u5973\u513f\u60c5+\u83ca\u82b1\u53f0\"},{\"itemId\":\"100_kw_MUSIC_29848160\",\"title\":\"\u81f3\u5c11\u8fd8\u6709\u4f60\"},{\"itemId\":\"100_kw_MUSIC_79506\",\"title\":\"\u5c31\u662f\u6211\"}]}"

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 97
    return-void
.end method

.method public static startBluetoothPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 106
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 107
    return-void
.end method

.method public static startFadeMusicPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 75
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 76
    return-void
.end method

.method public static startMusicPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 45
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 46
    return-void
.end method

.method public static startNetConfig(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 116
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 117
    return-void
.end method

.method public static stopBluetoothPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 111
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/16 v1, 0x40

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 112
    return-void
.end method

.method public static stopFadeMusicPlay(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 70
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x4

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 71
    return-void
.end method

.method public static stopMusicPlay(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    .line 49
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 50
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 51
    return-void
.end method

.method public static stopNetConfig(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const-string v1, "msgcenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 121
    .local v0, "dispatchManager":Landroid/os/MessageDispatchManager;
    const/high16 v1, 0x40000

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 122
    return-void
.end method
