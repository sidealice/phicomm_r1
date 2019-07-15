.class public final Lcom/phicomm/speaker/player/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static printer:Lcom/phicomm/speaker/player/logger/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static addLogAdapter(Lcom/phicomm/speaker/player/logger/LogAdapter;)V
    .locals 1
    .param p0, "adapter"    # Lcom/phicomm/speaker/player/logger/LogAdapter;

    .prologue
    .line 26
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/player/logger/Printer;->addAdapter(Lcom/phicomm/speaker/player/logger/LogAdapter;)V

    .line 27
    return-void
.end method

.method public static clearLogAdapters()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/logger/Printer;->clearLogAdapters()V

    .line 31
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 54
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/player/logger/Printer;->d(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/phicomm/speaker/player/logger/Printer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/logger/Printer;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1, p2}, Lcom/phicomm/speaker/player/logger/Printer;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/phicomm/speaker/player/logger/Printer;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/player/logger/Printer;->json(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/phicomm/speaker/player/logger/Printer;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public static printer(Lcom/phicomm/speaker/player/logger/Printer;)V
    .locals 0
    .param p0, "printer"    # Lcom/phicomm/speaker/player/logger/Printer;

    .prologue
    .line 22
    sput-object p0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    .line 23
    return-void
.end method

.method public static t(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/Printer;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/player/logger/Printer;->t(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/Printer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/phicomm/speaker/player/logger/Printer;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 74
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/phicomm/speaker/player/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 82
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/phicomm/speaker/player/logger/Printer;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/phicomm/speaker/player/logger/Logger;->printer:Lcom/phicomm/speaker/player/logger/Printer;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/player/logger/Printer;->xml(Ljava/lang/String;)V

    .line 97
    return-void
.end method
