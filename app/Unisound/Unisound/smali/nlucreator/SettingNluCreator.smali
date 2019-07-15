.class public Lnlucreator/SettingNluCreator;
.super Ljava/lang/Object;


# static fields
.field private static final CMD_DECREASE:I = 0x2

.field private static final CMD_INCREASE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    const-string v1, "cn.yunzhisheng.setting.common"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    new-instance v1, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {v1}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lnluparser/scheme/SettingIntent;

    invoke-direct {v3}, Lnluparser/scheme/SettingIntent;-><init>()V

    const-string v4, "ATTR_VOLUME"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperands(Ljava/lang/String;)V

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
    const-string v4, "\u589e\u5927\u97f3\u91cf"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_INCREASE"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v4, "\u51cf\u5c0f\u97f3\u91cf"

    invoke-virtual {v0, v4}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    const-string v4, "ACT_DECREASE"

    invoke-virtual {v3, v4}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVolumeDecreaseNlu()Lnluparser/scheme/NLU;
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

    invoke-static {v0}, Lnlucreator/SettingNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method public static createVolumeIncreaseNlu()Lnluparser/scheme/NLU;
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

    invoke-static {v0}, Lnlucreator/SettingNluCreator;->createNlu(I)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method
