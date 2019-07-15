.class public Lcom/unisound/ant/device/nlu/MusicNluCreator;
.super Ljava/lang/Object;
.source "MusicNluCreator.java"


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

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMusicCloseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "asrText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicNextNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "asrText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicPauseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "asrText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicPlayNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "asrText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicPrevNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "asrText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createMusicStopNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "asrText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method private static createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;
    .locals 6
    .param p0, "asrText"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 79
    .local v1, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    const-string v5, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {v0}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    .line 81
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "operations":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    new-instance v2, Lnluparser/scheme/SettingIntent;

    invoke-direct {v2}, Lnluparser/scheme/SettingIntent;-><init>()V

    .line 83
    .local v2, "operation":Lnluparser/scheme/SettingIntent;
    packed-switch p1, :pswitch_data_0

    .line 109
    :goto_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v0, v3}, Lnluparser/scheme/SettingExtIntent;->setOperations(Ljava/util/List;)V

    .line 111
    new-instance v4, Lnluparser/scheme/Semantic;

    invoke-direct {v4}, Lnluparser/scheme/Semantic;-><init>()V

    .line 112
    .local v4, "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/Intent;>;"
    invoke-virtual {v4, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 113
    invoke-virtual {v1, v4}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 115
    return-object v1

    .line 85
    .end local v4    # "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/Intent;>;"
    :pswitch_0
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 86
    const-string v5, "ACT_PLAY"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 90
    const-string v5, "ACT_PAUSE"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 94
    const-string v5, "ACT_STOP"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 98
    const-string v5, "ACT_NEXT"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_4
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 102
    const-string v5, "ACT_PREV"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_5
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 106
    const-string v5, "ACT_CLOSE"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 83
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
