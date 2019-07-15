.class public Lnlucreator/MusicNluCreator;
.super Ljava/lang/Object;


# static fields
.field private static final CMD_CLOSE:I = 0x5

.field private static final CMD_NEXT:I = 0x4

.field private static final CMD_PAUSE:I = 0x2

.field private static final CMD_PLAY:I = 0x1

.field private static final CMD_PREV:I = 0x3

.field private static final CMD_STOP:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMusicCloseNlu()Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {v0}, Lnlucreator/MusicNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicNextNlu()Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lnlucreator/MusicNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicPauseNlu()Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lnlucreator/MusicNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicPlayNlu()Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lnlucreator/MusicNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicPrevNlu()Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {v0}, Lnlucreator/MusicNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicStopNlu()Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {v0}, Lnlucreator/MusicNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method private static createNlu(I)Lnluparser/scheme/NLU;
    .locals 5
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    const-string v1, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    new-instance v1, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {v1}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lnluparser/scheme/SettingIntent;

    invoke-direct {v3}, Lnluparser/scheme/SettingIntent;-><init>()V

    packed-switch p0, :pswitch_data_0

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lnluparser/scheme/SettingExtIntent;->setOperations(Ljava/util/List;)V

    new-instance v2, Lnluparser/scheme/Semantic;

    invoke-direct {v2}, Lnluparser/scheme/Semantic;-><init>()V

    invoke-virtual {v2, v1}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    invoke-virtual {v0, v2}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    return-object v0

    :pswitch_0
    const-string v4, "\u64ad\u653e"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_PLAY"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v4, "\u6682\u505c"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_PAUSE"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v4, "\u505c\u6b62"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_STOP"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v4, "\u4e0b\u4e00\u9996"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_NEXT"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v4, "\u4e0a\u4e00\u9996"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_PREV"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v4, "\u9000\u51fa\u64ad\u653e"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_CLOSE"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
