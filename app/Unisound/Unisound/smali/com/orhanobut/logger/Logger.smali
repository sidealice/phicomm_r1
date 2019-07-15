.class public final Lcom/orhanobut/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field private static final DEFAULT_TAG:Ljava/lang/String; = "PRETTYLOGGER"

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static printer:Lcom/orhanobut/logger/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-direct {v0}, Lcom/orhanobut/logger/LoggerPrinter;-><init>()V

    sput-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 63
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static init()Lcom/orhanobut/logger/Settings;
    .locals 1

    .prologue
    .line 29
    const-string v0, "PRETTYLOGGER"

    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-direct {v0}, Lcom/orhanobut/logger/LoggerPrinter;-><init>()V

    sput-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    .line 39
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    return-object v0
.end method

.method public static json(Ljava/lang/String;)V
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->json(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/orhanobut/logger/Printer;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public static resetSettings()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0}, Lcom/orhanobut/logger/Printer;->resetSettings()V

    .line 44
    return-void
.end method

.method public static t(I)Lcom/orhanobut/logger/Printer;
    .locals 2
    .param p0, "methodCount"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/orhanobut/logger/Printer;->t(Ljava/lang/String;I)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    return-object v0
.end method

.method public static t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    sget-object v1, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v1}, Lcom/orhanobut/logger/Printer;->getSettings()Lcom/orhanobut/logger/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getMethodCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/orhanobut/logger/Printer;->t(Ljava/lang/String;I)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    return-object v0
.end method

.method public static t(Ljava/lang/String;I)Lcom/orhanobut/logger/Printer;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodCount"    # I

    .prologue
    .line 55
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->t(Ljava/lang/String;I)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->xml(Ljava/lang/String;)V

    .line 110
    return-void
.end method
