.class final Lcom/orhanobut/logger/LoggerPrinter;
.super Ljava/lang/Object;
.source "LoggerPrinter.java"

# interfaces
.implements Lcom/orhanobut/logger/Printer;


# static fields
.field private static final ASSERT:I = 0x7

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final BOTTOM_LEFT_CORNER:C = '\u255a'

.field private static final CHUNK_SIZE:I = 0xfa0

.field private static final DEBUG:I = 0x3

.field private static final DEFAULT_TAG:Ljava/lang/String; = "PRETTYLOGGER"

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final ERROR:I = 0x6

.field private static final HORIZONTAL_DOUBLE_LINE:C = '\u2551'

.field private static final INFO:I = 0x4

.field private static final JSON_INDENT:I = 0x2

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final MIDDLE_CORNER:C = '\u255f'

.field private static final MIN_STACK_OFFSET:I = 0x3

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_BORDER:Ljava/lang/String; = "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final TOP_LEFT_CORNER:C = '\u2554'

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5


# instance fields
.field private final localMethodCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final localTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/orhanobut/logger/Settings;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    .line 75
    new-instance v0, Lcom/orhanobut/logger/Settings;

    invoke-direct {v0}, Lcom/orhanobut/logger/Settings;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    .line 78
    const-string v0, "PRETTYLOGGER"

    invoke-virtual {p0, v0}, Lcom/orhanobut/logger/LoggerPrinter;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    .line 79
    return-void
.end method

.method private varargs createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 367
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .end local p1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/orhanobut/logger/Helper;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method private getMethodCount()I
    .locals 4

    .prologue
    .line 371
    iget-object v2, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 372
    .local v0, "count":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v2}, Lcom/orhanobut/logger/Settings;->getMethodCount()I

    move-result v1

    .line 373
    .local v1, "result":I
    if-eqz v0, :cond_0

    .line 374
    iget-object v2, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 377
    :cond_0
    if-gez v1, :cond_1

    .line 378
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "methodCount cannot be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :cond_1
    return v1
.end method

.method private getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, "lastIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;)I
    .locals 4
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 391
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 392
    aget-object v0, p1, v1

    .line 393
    .local v0, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "name":Ljava/lang/String;
    const-class v3, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/orhanobut/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    .line 398
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 391
    .restart local v0    # "e":Ljava/lang/StackTraceElement;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 363
    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method private varargs declared-synchronized log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v2}, Lcom/orhanobut/logger/Settings;->getLogLevel()Lcom/orhanobut/logger/LogLevel;

    move-result-object v2

    sget-object v3, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/orhanobut/logger/LoggerPrinter;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "tag":Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/orhanobut/logger/LoggerPrinter;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private logBottomBorder(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private logChunk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "chunk"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-direct {p0, p2}, Lcom/orhanobut/logger/LoggerPrinter;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "finalTag":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 337
    :pswitch_0
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/orhanobut/logger/LogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 320
    :pswitch_1
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/orhanobut/logger/LogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_2
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/orhanobut/logger/LogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/orhanobut/logger/LogAdapter;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_4
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/orhanobut/logger/LogAdapter;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_5
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcom/orhanobut/logger/LogAdapter;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private logContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "chunk"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "lines":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 312
    .local v0, "line":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2551 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private logDivider(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private logHeaderContent(ILjava/lang/String;I)V
    .locals 8
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "methodCount"    # I

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 266
    .local v5, "trace":[Ljava/lang/StackTraceElement;
    iget-object v6, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v6}, Lcom/orhanobut/logger/Settings;->isShowThreadInfo()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2551 Thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logDivider(ILjava/lang/String;)V

    .line 270
    :cond_0
    const-string v2, ""

    .line 272
    .local v2, "level":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/orhanobut/logger/LoggerPrinter;->getStackOffset([Ljava/lang/StackTraceElement;)I

    move-result v6

    iget-object v7, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v7}, Lcom/orhanobut/logger/Settings;->getMethodOffset()I

    move-result v7

    add-int v4, v6, v7

    .line 275
    .local v4, "stackOffset":I
    add-int v6, p3, v4

    array-length v7, v5

    if-le v6, v7, :cond_1

    .line 276
    array-length v6, v5

    sub-int/2addr v6, v4

    add-int/lit8 p3, v6, -0x1

    .line 279
    :cond_1
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 280
    add-int v3, v1, v4

    .line 281
    .local v3, "stackIndex":I
    array-length v6, v5

    if-lt v3, v6, :cond_2

    .line 279
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v6, "\u2551 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 286
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    .line 287
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/orhanobut/logger/LoggerPrinter;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    .line 289
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    .line 290
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    .line 291
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    .line 292
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    .line 293
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    .line 294
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    .line 295
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "stackIndex":I
    :cond_3
    return-void
.end method

.method private logTopBorder(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void

    .line 118
    .end local v0    # "message":Ljava/lang/String;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 110
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 128
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public getSettings()Lcom/orhanobut/logger/Settings;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    return-object v0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 136
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tag may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    return-object v0
.end method

.method public json(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 153
    invoke-static {p1}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "Empty/Null json content"

    invoke-virtual {p0, v4}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 158
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 159
    const-string v4, "{"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Invalid Json"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v4, "["

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3    # "message":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    const-string v4, "Invalid Json"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/16 v7, 0xfa0

    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v5}, Lcom/orhanobut/logger/Settings;->getLogLevel()Lcom/orhanobut/logger/LogLevel;

    move-result-object v5

    sget-object v6, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 205
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Lcom/orhanobut/logger/Helper;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 207
    :cond_1
    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    .line 208
    invoke-static {p4}, Lcom/orhanobut/logger/Helper;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 210
    :cond_2
    if-nez p3, :cond_3

    .line 211
    const-string p3, "No message/exception is set"

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/orhanobut/logger/LoggerPrinter;->getMethodCount()I

    move-result v4

    .line 214
    .local v4, "methodCount":I
    invoke-static {p3}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    const-string p3, "Empty/NULL log message"

    .line 218
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logTopBorder(ILjava/lang/String;)V

    .line 219
    invoke-direct {p0, p1, p2, v4}, Lcom/orhanobut/logger/LoggerPrinter;->logHeaderContent(ILjava/lang/String;I)V

    .line 222
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 223
    .local v0, "bytes":[B
    array-length v3, v0

    .line 224
    .local v3, "length":I
    if-gt v3, v7, :cond_6

    .line 225
    if-lez v4, :cond_5

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logDivider(ILjava/lang/String;)V

    .line 228
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/orhanobut/logger/LoggerPrinter;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logBottomBorder(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v0    # "bytes":[B
    .end local v3    # "length":I
    .end local v4    # "methodCount":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 232
    .restart local v0    # "bytes":[B
    .restart local v3    # "length":I
    .restart local v4    # "methodCount":I
    :cond_6
    if-lez v4, :cond_7

    .line 233
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logDivider(ILjava/lang/String;)V

    .line 235
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_8

    .line 236
    sub-int v5, v3, v2

    const/16 v6, 0xfa0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 238
    .local v1, "count":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, p2, v5}, Lcom/orhanobut/logger/LoggerPrinter;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    add-int/lit16 v2, v2, 0xfa0

    goto :goto_1

    .line 240
    .end local v1    # "count":I
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logBottomBorder(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resetSettings()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v0}, Lcom/orhanobut/logger/Settings;->reset()V

    .line 245
    return-void
.end method

.method public t(Ljava/lang/String;I)Lcom/orhanobut/logger/Printer;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodCount"    # I

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    return-object p0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 140
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 132
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 144
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .locals 7
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, "Empty/Null xml content"

    invoke-virtual {p0, v4}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 189
    .local v2, "xmlInput":Ljavax/xml/transform/Source;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 190
    .local v3, "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 191
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v1, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "2"

    invoke-virtual {v1, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 194
    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ">"

    const-string v6, ">\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v2    # "xmlInput":Ljavax/xml/transform/Source;
    .end local v3    # "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    const-string v4, "Invalid xml"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
