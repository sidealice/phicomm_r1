.class public final Lcom/orhanobut/logger/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private logAdapter:Lcom/orhanobut/logger/LogAdapter;

.field private logLevel:Lcom/orhanobut/logger/LogLevel;

.field private methodCount:I

.field private methodOffset:I

.field private showThreadInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    .line 13
    sget-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-void
.end method


# virtual methods
.method public getLogAdapter()Lcom/orhanobut/logger/LogAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/orhanobut/logger/AndroidLogAdapter;

    invoke-direct {v0}, Lcom/orhanobut/logger/AndroidLogAdapter;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    return-object v0
.end method

.method public getLogLevel()Lcom/orhanobut/logger/LogLevel;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    return v0
.end method

.method public getMethodOffset()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    return v0
.end method

.method public hideThreadInfo()Lcom/orhanobut/logger/Settings;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    .line 17
    return-object p0
.end method

.method public isShowThreadInfo()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    return v0
.end method

.method public logAdapter(Lcom/orhanobut/logger/LogAdapter;)Lcom/orhanobut/logger/Settings;
    .locals 0
    .param p1, "logAdapter"    # Lcom/orhanobut/logger/LogAdapter;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    .line 40
    return-object p0
.end method

.method public logLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;
    .locals 0
    .param p1, "logLevel"    # Lcom/orhanobut/logger/LogLevel;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    .line 30
    return-object p0
.end method

.method public methodCount(I)Lcom/orhanobut/logger/Settings;
    .locals 0
    .param p1, "methodCount"    # I

    .prologue
    .line 21
    if-gez p1, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 24
    :cond_0
    iput p1, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    .line 25
    return-object p0
.end method

.method public methodOffset(I)Lcom/orhanobut/logger/Settings;
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    .line 35
    return-object p0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    .line 70
    sget-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    .line 71
    return-void
.end method
