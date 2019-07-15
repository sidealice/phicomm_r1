.class public Lcom/unisound/ant/device/nlu/SettingNluCreator;
.super Ljava/lang/Object;
.source "SettingNluCreator.java"


# static fields
.field private static final CMD_DECREASE:I = 0x2

.field private static final CMD_INCREASE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 44
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 45
    .local v1, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    const-string v5, "cn.yunzhisheng.setting.common"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {v0}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    .line 47
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, "operations":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    new-instance v2, Lnluparser/scheme/SettingIntent;

    invoke-direct {v2}, Lnluparser/scheme/SettingIntent;-><init>()V

    .line 49
    .local v2, "operation":Lnluparser/scheme/SettingIntent;
    const-string v5, "ATTR_VOLUME"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperands(Ljava/lang/String;)V

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0, v3}, Lnluparser/scheme/SettingExtIntent;->setOperations(Ljava/util/List;)V

    .line 64
    new-instance v4, Lnluparser/scheme/Semantic;

    invoke-direct {v4}, Lnluparser/scheme/Semantic;-><init>()V

    .line 65
    .local v4, "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/Intent;>;"
    invoke-virtual {v4, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 66
    invoke-virtual {v1, v4}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 68
    return-object v1

    .line 52
    .end local v4    # "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/Intent;>;"
    :pswitch_0
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 53
    const-string v5, "ACT_INCREASE"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {v1, p0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 57
    const-string v5, "ACT_DECREASE"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVolumeDecreaseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
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
    .line 34
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/SettingNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createVolumeIncreaseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;
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
    .line 27
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/unisound/ant/device/nlu/SettingNluCreator;->createNlu(Ljava/lang/String;I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method
