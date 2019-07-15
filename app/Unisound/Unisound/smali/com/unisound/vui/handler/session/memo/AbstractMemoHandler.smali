.class public abstract Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "AbstractMemoHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/Intent;",
        "Lnluparser/scheme/Result$NullResult;",
        ">;>;"
    }
.end annotation


# static fields
.field protected static final NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AbstractMemoHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;

    const-string v1, "NEED_SUPPLEMENT"

    .line 33
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method checkMemoCount(Ljava/lang/String;)Z
    .locals 8
    .param p1, "memoType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    :cond_1
    move v3, v4

    .line 172
    :goto_1
    return v3

    .line 143
    :sswitch_0
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "countDown"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "reminder"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getAlarmsCount()I

    move-result v0

    .line 146
    .local v0, "alarmCount":I
    const-string v5, "AbstractMemoHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAlarmCount, alarmCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountAlarm:I

    if-le v0, v5, :cond_1

    goto :goto_1

    .line 152
    .end local v0    # "alarmCount":I
    :pswitch_1
    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getCountDownCount()I

    move-result v1

    .line 153
    .local v1, "countDownCount":I
    const-string v5, "AbstractMemoHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAlarmCount, countDownCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountCountDown:I

    if-le v1, v5, :cond_1

    goto :goto_1

    .line 159
    .end local v1    # "countDownCount":I
    :pswitch_2
    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getReminderCount()I

    move-result v2

    .line 161
    .local v2, "reminderCount":I
    sget v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountReminder:I

    if-le v2, v5, :cond_1

    .line 162
    const-string v4, "AbstractMemoHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkReminderCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountAlarm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ee93f8e -> :sswitch_2
        0x5897a51 -> :sswitch_0
        0x508aca51 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dealWithAnswer(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/General;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "answerGeneral"    # Lnluparser/scheme/General;

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :cond_0
    sget-object v0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 136
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->setPriority(I)V

    .line 137
    invoke-virtual {p2}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 126
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->reset()V

    .line 127
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->recoveryHandlerPriority()V

    .line 129
    :cond_0
    return-void
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 7
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 50
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "code":Ljava/lang/String;
    const-string v3, "AbstractMemoHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->> eventReceived code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, ""

    .line 54
    .local v2, "playAnswer":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 102
    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_unsupport:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_2
    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1, v2}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 107
    return-void

    .line 54
    :sswitch_0
    const-string v5, "ALARM_REMOVE_ALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "REMINDER_REMOVE_ALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string v5, "ALARM_CANCEL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "REMINDER_CANCEL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "ALARM_REMOVE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "REMINDER_REMOVE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "ANSWER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "ALARM_STOP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "ALARM_SET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "REMINDER_SET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "ALARM_SET_TIMING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    .line 59
    :pswitch_1
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_memo_cancel_disallowed:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    goto/16 :goto_1

    .line 65
    :pswitch_2
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_memo_cancel_disallowed:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    goto/16 :goto_1

    .line 71
    :pswitch_3
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_memo_cancel_disallowed:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    goto/16 :goto_1

    .line 74
    :pswitch_4
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->dealWithAnswer(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/General;)Ljava/lang/String;

    move-result-object v2

    .line 75
    goto/16 :goto_1

    .line 86
    :pswitch_5
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v1

    .line 88
    .local v1, "intent":Lnluparser/scheme/Intent;
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v3}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 89
    goto/16 :goto_1

    .line 92
    .end local v1    # "intent":Lnluparser/scheme/Intent;
    :pswitch_6
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/AlarmIntent;

    .line 94
    .local v1, "intent":Lnluparser/scheme/AlarmIntent;
    invoke-virtual {v1, v4}, Lnluparser/scheme/AlarmIntent;->setType(I)V

    .line 95
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v3}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 96
    goto/16 :goto_1

    .line 54
    :sswitch_data_0
    .sparse-switch
        -0x77a8690b -> :sswitch_9
        -0x5dc58dec -> :sswitch_0
        -0x4729924b -> :sswitch_a
        -0x1a5712b0 -> :sswitch_7
        0x2c8f448 -> :sswitch_2
        0x1c99be52 -> :sswitch_4
        0x2d606ae7 -> :sswitch_3
        0x30e78133 -> :sswitch_1
        0x473134f1 -> :sswitch_5
        0x735d33be -> :sswitch_6
        0x7b057134 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getMemoTimeNlu(Landroid/content/Context;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Ljava/lang/String;
    .locals 4
    .param p1, "mAndroidContext"    # Landroid/content/Context;
    .param p2, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/memo/R$array;->memo_time_day_nlu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "memoTimeDayNlus":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/memo/R$array;->memo_time_duration_nlu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "memoTimeDurationNlus":[Ljava/lang/String;
    invoke-static {p2, v0, v1}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->getSetMemoNluTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 43
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getInstance()Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    .line 44
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->reset()V

    .line 112
    sget-object v0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;->recoveryHandlerPriority()V

    .line 116
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 117
    const-string v0, "doResume"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto :goto_0
.end method

.method protected abstract recoveryHandlerPriority()V
.end method
