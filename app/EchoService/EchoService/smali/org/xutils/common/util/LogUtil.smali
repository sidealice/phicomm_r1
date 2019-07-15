.class public Lorg/xutils/common/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static customTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "x_log"

    sput-object v0, Lorg/xutils/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static generateTag()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 39
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v0, v3, v6

    .line 40
    .local v0, "caller":Ljava/lang/StackTraceElement;
    const-string v2, "%s.%s(L:%d)"

    .line 41
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "callerClazzName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 44
    sget-object v3, Lorg/xutils/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :goto_0
    return-object v2

    .line 44
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/xutils/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
