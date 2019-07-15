.class public Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;
.super Ljava/lang/Object;
.source "MemoDataManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;


# static fields
.field public static final KEY_FAVORITE_RINGTONE:Ljava/lang/String; = "favorite_ringtone"

.field public static final MEMO_OPTION_ADD:Ljava/lang/String; = "add"

.field public static final MEMO_OPTION_DELETE:Ljava/lang/String; = "delete"

.field public static final MEMO_OPTION_UPDATE:Ljava/lang/String; = "update"

.field private static final MSG_ACTION_ADD:I = 0x1001

.field private static final MSG_ACTION_DELETE:I = 0x1002

.field private static final MSG_ACTION_QUERY_ALL:I = 0x1000

.field private static final MSG_ACTION_UPDATE:I = 0x1003

.field public static final SP_NAME_MEMO_RINGTONE_TYPE:Ljava/lang/String; = "memo_ringtone_type"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMemoScheduler:Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

.field private mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

.field private mTaskHandler:Landroid/os/Handler;

.field private sAllMemos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;"
        }
    .end annotation
.end field

.field private sEnabledMemoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memolog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    .line 60
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    .line 160
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "syncMemo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "mHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mTaskHandler:Landroid/os/Handler;

    .line 164
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mContext:Landroid/content/Context;

    .line 165
    new-instance v1, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    invoke-direct {v1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;-><init>()V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    .line 166
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    invoke-virtual {v1, p0}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->setControlStateListener(Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;)V

    .line 167
    new-instance v1, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

    invoke-direct {v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;-><init>()V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoScheduler:Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

    .line 168
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->initMemoData()V

    .line 169
    return-void
.end method

.method private doDataActionOfAdd(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 2
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 111
    const/16 v0, 0x1001

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sendDataActionMessage(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    const-string v1, "add"

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 113
    return-void
.end method

.method private doDataActionOfDelete(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 2
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 106
    const/16 v0, 0x1002

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sendDataActionMessage(ILjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    const-string v1, "delete"

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 108
    return-void
.end method

.method private doDataActionOfQueryAll()V
    .locals 2

    .prologue
    .line 102
    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sendDataActionMessage(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method private doDataActionOfUpdateAll(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "newMemo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "memoyear"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v1, "memomonth"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "memoday"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v1, "memohour"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v1, "memominute"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v1, "memosecond"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v1, "islocalcreateupddate"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isLocalCreateUpDdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 147
    const-string v1, "isenabled"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    const-string v1, "repeattype"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "memocontent"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "memotype"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "ringing"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "countdown"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getCountDown()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v1, "memoid"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/16 v1, 0x1003

    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sendDataActionMessage(ILjava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    const-string v2, "update"

    invoke-virtual {v1, v2, p1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 157
    return-void
.end method

.method private doDataActionOfUpdateEnable(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "newMemo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "isenabled"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string v1, "memoid"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v1, 0x1003

    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sendDataActionMessage(ILjava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    const-string v2, "update"

    invoke-virtual {v1, v2, p1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 122
    return-void
.end method

.method private doDataActionOfUpdateTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "newMemo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "memoyear"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v1, "memomonth"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v1, "memoday"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v1, "memohour"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v1, "memominute"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "memosecond"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v1, "memoid"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v1, 0x1003

    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sendDataActionMessage(ILjava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoStateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    const-string v2, "update"

    invoke-virtual {v1, v2, p1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 136
    return-void
.end method

.method private filterMemos(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "memos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    sget-object v2, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterMemos, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "memosToDel":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 190
    .local v0, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    sget-object v3, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterMemos, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isAlarm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isRepeat()Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setEnabled(Z)V

    .line 198
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfUpdateEnable(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {v0}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->calculateNextTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfUpdateTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfDelete(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 209
    .end local v0    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 210
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 211
    return-object p1
.end method

.method private generateTimeMemoMap()V
    .locals 7

    .prologue
    .line 215
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 216
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 217
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 218
    .local v0, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v2

    .line 220
    .local v2, "time":J
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    .end local v1    # "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    :cond_1
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v0    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .end local v2    # "time":J
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sInstance:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    if-nez v0, :cond_1

    .line 173
    const-class v1, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    monitor-enter v1

    .line 174
    :try_start_0
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sInstance:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sInstance:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    .line 177
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sInstance:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLocalMemo(Ljava/lang/String;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .locals 3
    .param p1, "memoId"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 261
    .local v0, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    .end local v0    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMemos(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "memoType"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 250
    .local v1, "memos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 252
    .local v0, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v0    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_1
    return-object v1
.end method

.method private onQueryAllMemosCompleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "allLocalMemos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->filterMemos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    .line 92
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->generateTimeMemoMap()V

    .line 93
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoScheduler:Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->createSchedules(Landroid/content/Context;Ljava/util/Set;)V

    .line 94
    return-void
.end method

.method private putMemoToMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 6
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 326
    sget-object v1, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putMemoToMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 329
    .local v0, "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .restart local v0    # "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoScheduler:Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->createAlarmSchedule(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private removeMemoFromMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 6
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 314
    sget-object v1, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMemoFromMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    .local v0, "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoScheduler:Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->cancelAlarmSchedule(Landroid/content/Context;J)V

    .line 323
    :cond_0
    return-void
.end method

.method private saveFavoriteRingtone(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 6
    .param p1, "newMemo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 408
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 409
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 410
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 411
    .local v1, "oldMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    sget-object v3, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFavoriteRingtone, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mContext:Landroid/content/Context;

    const-string v4, "memo_ringtone_type"

    const/4 v5, 0x0

    .line 415
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 416
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "favorite_ringtone"

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    .end local v1    # "oldMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private sendDataActionMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    return-void
.end method


# virtual methods
.method public addMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 269
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMemo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->putMemoToMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfAdd(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 278
    return-void
.end method

.method public deleteMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 341
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMemo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->removeMemoFromMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 349
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfDelete(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 350
    return-void
.end method

.method public getAlarmsCount()I
    .locals 1

    .prologue
    .line 236
    const-string v0, "alarm"

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getMemos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountDownCount()I
    .locals 1

    .prologue
    .line 244
    const-string v0, "countDown"

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getMemos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFavoriteRingtone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 423
    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mContext:Landroid/content/Context;

    const-string v3, "memo_ringtone_type"

    const/4 v4, 0x0

    .line 424
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "favorite_ringtone"

    const-string v3, "happiness"

    .line 426
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "ringtone":Ljava/lang/String;
    sget-object v2, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFavoriteRingtone, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-object v0
.end method

.method public getMemosByTime(J)Ljava/util/List;
    .locals 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getReminderCount()I
    .locals 1

    .prologue
    .line 240
    const-string v0, "reminder"

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getMemos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 63
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 86
    :goto_0
    return v4

    .line 65
    :pswitch_0
    sget-object v6, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    const-string v7, "MSG_ACTION_QUERY_ALL"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-class v6, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    new-array v4, v4, [J

    invoke-static {v6, v4}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "memos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->onQueryAllMemosCompleted(Ljava/util/List;)V

    move v4, v5

    .line 68
    goto :goto_0

    .line 70
    .end local v1    # "memos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    :pswitch_1
    sget-object v4, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_ACTION_ADD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v4}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->saveFast()Z

    move v4, v5

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    sget-object v6, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_ACTION_DELETE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-class v6, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "memoId = ?"

    aput-object v8, v7, v4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v4}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v6, v7}, Lorg/litepal/crud/DataSupport;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    move v4, v5

    .line 76
    goto :goto_0

    .line 78
    :pswitch_3
    sget-object v6, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_ACTION_UPDATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ContentValues;

    .line 80
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "memoid"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "memoId":Ljava/lang/String;
    const-string v6, "memoid"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 82
    const-class v6, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "memoId = ?"

    aput-object v8, v7, v4

    aput-object v0, v7, v5

    invoke-static {v6, v3, v7}, Lorg/litepal/crud/DataSupport;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "rows":I
    sget-object v4, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update rows:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 84
    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initMemoData()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfQueryAll()V

    .line 184
    return-void
.end method

.method public remoteAddMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 389
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteAddMemo, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->addMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 392
    return-void
.end method

.method public remoteDeleteMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 395
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteDeleteMemo, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->deleteMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 398
    return-void
.end method

.method public remoteUpdateMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 3
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 401
    sget-object v0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteUpdateMemo, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->saveFavoriteRingtone(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->updateMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 405
    return-void
.end method

.method public updateMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 8
    .param p1, "newMemo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 281
    sget-object v3, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMemo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 284
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 285
    sget-object v3, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    const-string v4, "updateMemo newMemo not in List"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 290
    .local v2, "oldMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setId(J)V

    .line 291
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 294
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 297
    .local v1, "memos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    if-eqz v1, :cond_1

    .line 298
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1    # "memos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfUpdateAll(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->removeMemoFromMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->putMemoToMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_1

    .line 304
    :cond_3
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 305
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->removeMemoFromMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->putMemoToMap(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_1
.end method

.method public updateMemosByExpiredTime(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 353
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    sget-object v3, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    const-string v4, "updateMemosByExpiredTime, time not in map!"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 359
    .local v0, "expiredMemos":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    sget-object v3, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMemosByExpiredTime, expiredMemos size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 362
    .local v1, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    sget-object v4, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMemosByExpiredTime, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isCountdown()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isReminder()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    :cond_2
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sAllMemos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 365
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfDelete(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 367
    :cond_3
    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isRepeat()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    invoke-static {v1}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->calculateNextTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 369
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfUpdateTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 370
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 371
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->mMemoScheduler:Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, p1, v6, v7}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->createAlarmSchedule(Landroid/content/Context;J)V

    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v2, "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 376
    .end local v2    # "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    :cond_4
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->sEnabledMemoMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 377
    .restart local v2    # "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0

    .line 381
    .end local v2    # "memoList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;>;"
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setEnabled(Z)V

    .line 382
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->doDataActionOfUpdateEnable(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto/16 :goto_0
.end method
