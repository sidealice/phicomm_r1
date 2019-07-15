.class public Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;
.super Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;
.source "DefaultReminderHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "memolog-ReminderHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private isValidReminder(Lnluparser/scheme/ReminderIntent;)Z
    .locals 2
    .param p1, "intent"    # Lnluparser/scheme/ReminderIntent;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lnluparser/scheme/ReminderIntent;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "cn.yunzhisheng.reminder"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "intent"    # Lnluparser/scheme/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    const-string v4, "reminder"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->checkMemoCount(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_reminder_count_max:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    :goto_0
    return-object v4

    :cond_0
    move-object v3, p1

    .line 46
    check-cast v3, Lnluparser/scheme/ReminderIntent;

    .line 47
    .local v3, "reminderIntent":Lnluparser/scheme/ReminderIntent;
    invoke-direct {p0, v3}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->isValidReminder(Lnluparser/scheme/ReminderIntent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    const-string v4, "memolog-ReminderHandler"

    const-string v5, "dealWithSetMemo, reminder intent is invalid"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v4, ""

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v3}, Lnluparser/scheme/ReminderIntent;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const-string v4, "memolog-ReminderHandler"

    const-string v5, "dealWithSetMemo, reminder content is empty"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_memo_set_result_withoutcontent_exception:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v3}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->generateReminderMemo(Lnluparser/scheme/ReminderIntent;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    move-result-object v2

    .line 57
    .local v2, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    if-nez v2, :cond_3

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5HH\u70b9mm\u5206"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "dateStr":Ljava/lang/String;
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_memo_set_result_outofdate_exception:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 62
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "dateStr":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v4, v2}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->addMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 64
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_reminder_set_result_ok:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v2}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->getMemoTimeNlu(Landroid/content/Context;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 65
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoContent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 64
    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->setPriority(I)V

    .line 30
    return-void
.end method

.method protected recoveryHandlerPriority()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->setPriority(I)V

    .line 82
    return-void
.end method
