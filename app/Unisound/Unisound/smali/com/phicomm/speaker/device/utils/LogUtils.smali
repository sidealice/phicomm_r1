.class public Lcom/phicomm/speaker/device/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "default_tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "default_tag"

    const-string v1, "[error]"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static iAnyhow(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    sget-boolean v0, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "default_tag"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_0
    return-void
.end method
