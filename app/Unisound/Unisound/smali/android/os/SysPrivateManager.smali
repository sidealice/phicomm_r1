.class public final Landroid/os/SysPrivateManager;
.super Ljava/lang/Object;
.source "SysPrivateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SysPrivateManager$modeChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SysPrivateManager"

.field private static final MSG_LED_CMD:I = 0x3

.field private static final MSG_MODE_CHANGED:I = 0x2

.field private static final MSG_SYSTEM_INIT:I = 0x1

.field public static final PRIVATE_KEY_RECOVERY_AFTER_PT:Ljava/lang/String; = "recoveryAfterProductionTest"

.field public static final PRIVATE_LEVEL_COMMON:I = 0x3eb

.field public static final PRIVATE_LEVEL_CRITICAL:I = 0x3e8

.field public static final PRIVATE_LEVEL_SYSTEM:I = 0x3e9

.field public static final PRIVATE_LEVEL_USER:I = 0x3ea

.field public static final SYSTEM_MODE_FACTORY_TEST:I = 0x1

.field public static final SYSTEM_MODE_NORMAL:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Landroid/os/ISysPrivate;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/ISysPrivate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/ISysPrivate;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/os/SysPrivateManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysPrivateManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/SysPrivateManager;->mThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Landroid/os/SysPrivateManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/SysPrivateManager$1;

    iget-object v1, p0, Landroid/os/SysPrivateManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/SysPrivateManager$1;-><init>(Landroid/os/SysPrivateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/SysPrivateManager;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method


# virtual methods
.method public getBootProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 247
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public getSysMode()I
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "ret":I
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v2, :cond_0

    .line 222
    const-string v2, "SysPrivateManager"

    const-string v3, "Feature android.private.service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v2, -0x1

    .line 230
    :goto_0
    return v2

    .line 226
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v2}, Landroid/os/ISysPrivate;->getSysMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 230
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SysPrivateManager"

    const-string v3, "Error get Sys Mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public readPropKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "secLevel"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v2, :cond_0

    .line 161
    const-string v2, "SysPrivateManager"

    const-string v3, "Feature android.private.service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-object v1

    .line 164
    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    :cond_1
    const-string v2, "SysPrivateManager"

    const-string v3, "bad parameter!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_3

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_3

    const/16 v2, 0x3ea

    if-eq p1, v2, :cond_3

    const/16 v2, 0x3eb

    if-eq p1, v2, :cond_3

    .line 172
    const-string v2, "SysPrivateManager"

    const-string v3, "bad level"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v2, p1, p2}, Landroid/os/ISysPrivate;->readLevelProp(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SysPrivateManager"

    const-string v3, "Error set writePropKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readPropKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v2, :cond_0

    .line 188
    const-string v2, "SysPrivateManager"

    const-string v3, "Feature android.private.service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-object v1

    .line 192
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v2, p1}, Landroid/os/ISysPrivate;->readProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SysPrivateManager"

    const-string v3, "Error set writePropKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readPropKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v2, :cond_0

    .line 140
    const-string v2, "SysPrivateManager"

    const-string v3, "Feature android.private.service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-object v1

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const-string v2, ""

    .line 144
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    :cond_1
    const-string v2, "SysPrivateManager"

    const-string v3, "bad parameter!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v2, p1, p2}, Landroid/os/ISysPrivate;->readFileProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SysPrivateManager"

    const-string v3, "Error set writePropKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootProp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v0, -0x1

    .line 264
    .local v0, "ret":I
    return v0
.end method

.method public setSysMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "ret":I
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v2, :cond_0

    .line 205
    const-string v2, "SysPrivateManager"

    const-string v3, "Feature android.private.service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, -0x1

    .line 213
    :goto_0
    return v2

    .line 209
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v2, p1}, Landroid/os/ISysPrivate;->setSysMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 213
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SysPrivateManager"

    const-string v3, "Error set Sys Mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public writePropKey(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "secLevel"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_0

    .line 121
    const-string v1, "SysPrivateManager"

    const-string v2, "bad level"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    :cond_1
    const-string v1, "SysPrivateManager"

    const-string v2, "bad parameter!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISysPrivate;->writeLevelProp(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SysPrivateManager"

    const-string v2, "Error set writePropKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writePropKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v1, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v1, :cond_0

    .line 83
    const-string v1, "SysPrivateManager"

    const-string v2, "Feature android.private.service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v1, p1, p2}, Landroid/os/ISysPrivate;->writeProp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SysPrivateManager"

    const-string v2, "Error set writePropKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writePropKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    if-nez v1, :cond_0

    .line 98
    const-string v1, "SysPrivateManager"

    const-string v2, "Feature android.private.service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    const-string v1, ""

    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    :cond_1
    const-string v1, "SysPrivateManager"

    const-string v2, "bad parameter!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/os/SysPrivateManager;->mService:Landroid/os/ISysPrivate;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISysPrivate;->writeFileProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SysPrivateManager"

    const-string v2, "Error set writePropKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
