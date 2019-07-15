.class public Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;
.super Ljava/lang/Object;
.source "PrettyFormatStrategy.java"

# interfaces
.implements Lcom/phicomm/speaker/player/logger/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$1;,
        Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final BOTTOM_LEFT_CORNER:C = '\u2514'

.field private static final CHUNK_SIZE:I = 0xfa0

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final HORIZONTAL_LINE:C = '\u2502'

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final MIDDLE_CORNER:C = '\u251c'

.field private static final MIN_STACK_OFFSET:I = 0x5

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final TOP_BORDER:Ljava/lang/String; = "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_LEFT_CORNER:C = '\u250c'


# instance fields
.field private final logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

.field private final methodCount:I

.field private final methodOffset:I

.field private final showThreadInfo:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;->methodCount:I

    iput v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->methodCount:I

    .line 38
    iget v0, p1, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;->methodOffset:I

    iput v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->methodOffset:I

    .line 39
    iget-boolean v0, p1, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;->showThreadInfo:Z

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->showThreadInfo:Z

    .line 40
    iget-object v0, p1, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    .line 41
    iget-object v0, p1, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$1;

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;-><init>(Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/logger/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 140
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
    .line 150
    const/4 v1, 0x5

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 151
    aget-object v0, p1, v1

    .line 152
    .local v0, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "name":Ljava/lang/String;
    const-class v3, Lcom/phicomm/speaker/player/logger/LoggerPrinter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/phicomm/speaker/player/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    .line 157
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 150
    .restart local v0    # "e":Ljava/lang/StackTraceElement;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private logBottomBorder(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private logChunk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "chunk"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logStrategy:Lcom/phicomm/speaker/player/logger/LogStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcom/phicomm/speaker/player/logger/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private logContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "chunk"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 130
    .local v3, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2502 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private logDivider(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private logHeaderContent(ILjava/lang/String;I)V
    .locals 8
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "methodCount"    # I

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 83
    .local v5, "trace":[Ljava/lang/StackTraceElement;
    iget-boolean v6, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->showThreadInfo:Z

    if-eqz v6, :cond_0

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2502 Thread: "

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

    invoke-direct {p0, p1, p2, v6}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 87
    :cond_0
    const-string v2, ""

    .line 89
    .local v2, "level":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->getStackOffset([Ljava/lang/StackTraceElement;)I

    move-result v6

    iget v7, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->methodOffset:I

    add-int v4, v6, v7

    .line 92
    .local v4, "stackOffset":I
    add-int v6, p3, v4

    array-length v7, v5

    if-le v6, v7, :cond_1

    .line 93
    array-length v6, v5

    sub-int/2addr v6, v4

    add-int/lit8 p3, v6, -0x1

    .line 96
    :cond_1
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 97
    add-int v3, v1, v4

    .line 98
    .local v3, "stackIndex":I
    array-length v6, v5

    if-lt v3, v6, :cond_2

    .line 96
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v6, 0x2502

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
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
    .line 77
    const-string v0, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static newBuilder()Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$Builder;-><init>(Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "priority"    # I
    .param p2, "onceOnlyTag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xfa0

    .line 49
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "tag":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logTopBorder(ILjava/lang/String;)V

    .line 52
    iget v5, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->methodCount:I

    invoke-direct {p0, p1, v4, v5}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logHeaderContent(ILjava/lang/String;I)V

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 56
    .local v0, "bytes":[B
    array-length v3, v0

    .line 57
    .local v3, "length":I
    if-gt v3, v6, :cond_1

    .line 58
    iget v5, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->methodCount:I

    if-lez v5, :cond_0

    .line 59
    invoke-direct {p0, p1, v4}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 61
    :cond_0
    invoke-direct {p0, p1, v4, p3}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, v4}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logBottomBorder(ILjava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v5, p0, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->methodCount:I

    if-lez v5, :cond_2

    .line 66
    invoke-direct {p0, p1, v4}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 68
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 69
    sub-int v5, v3, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 71
    .local v1, "count":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, v4, v5}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit16 v2, v2, 0xfa0

    goto :goto_1

    .line 73
    .end local v1    # "count":I
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/phicomm/speaker/player/logger/PrettyFormatStrategy;->logBottomBorder(ILjava/lang/String;)V

    goto :goto_0
.end method
