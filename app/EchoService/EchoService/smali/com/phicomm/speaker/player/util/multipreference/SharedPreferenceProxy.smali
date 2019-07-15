.class public Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;
.super Ljava/lang/Object;
.source "SharedPreferenceProxy.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;
    }
.end annotation


# static fields
.field private static processFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sharedPreferenceProxyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Landroid/content/Context;

.field private preferName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->processFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->ctx:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->preferName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->preferName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private static getFromLocalProcess(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preferName"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getFromRemoteProcess(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preferName"    # Ljava/lang/String;

    .prologue
    .line 246
    const-class v2, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    monitor-enter v2

    .line 247
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->sharedPreferenceProxyMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->sharedPreferenceProxyMap:Ljava/util/Map;

    .line 250
    :cond_0
    sget-object v1, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->sharedPreferenceProxyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    .line 251
    .local v0, "preferenceProxy":Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;
    if-nez v0, :cond_1

    .line 252
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    .end local v0    # "preferenceProxy":Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    .restart local v0    # "preferenceProxy":Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;
    sget-object v1, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->sharedPreferenceProxyMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    monitor-exit v2

    return-object v0

    .line 256
    .end local v0    # "preferenceProxy":Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 7
    .param p1, "input"    # Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v4, "method_query_value"

    iget-object v5, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->preferName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 118
    .local v1, "res":Landroid/os/Bundle;
    new-instance v2, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    invoke-direct {v2, v1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "res":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preferName"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v2, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->processFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v4, "method_query_pid"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 228
    .local v1, "pid":I
    if-eqz v0, :cond_0

    .line 229
    const-string v2, "key_result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 232
    :cond_0
    if-nez v1, :cond_1

    .line 233
    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getFromLocalProcess(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 240
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "pid":I
    :goto_0
    return-object v2

    .line 235
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "pid":I
    :cond_1
    sget-object v3, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->processFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 236
    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 235
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 237
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "pid":I
    :cond_3
    sget-object v2, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->processFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_4

    .line 238
    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getFromLocalProcess(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 240
    :cond_4
    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getFromRemoteProcess(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v1, "input":Landroid/os/Bundle;
    const-string v3, "key_key"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v5, "method_contain_key"

    iget-object v6, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->preferName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/os/Bundle;
    const-string v3, "key_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 93
    .end local v2    # "res":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;-><init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support method getAll"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 77
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setBooleanValue(Z)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 78
    .local v0, "result":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    if-nez v0, :cond_0

    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getBooleanValue(Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 71
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setFloatValue(F)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 72
    .local v0, "result":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    if-nez v0, :cond_0

    .end local p2    # "defValue":F
    :goto_0
    return p2

    .restart local p2    # "defValue":F
    :cond_0
    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getFloatValue(F)F

    move-result p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 59
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setIntValue(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 60
    .local v0, "result":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    if-nez v0, :cond_0

    .end local p2    # "defValue":I
    :goto_0
    return p2

    .restart local p2    # "defValue":I
    :cond_0
    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getIntValue(I)I

    move-result p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 65
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setLongValue(J)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 66
    .local v0, "result":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    if-nez v0, :cond_0

    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defValue":J
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getLongValue(J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setStringValue(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 41
    .local v0, "result":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    if-nez v0, :cond_0

    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setStringSettingsValue(Ljava/util/Set;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getResult(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 47
    .local v0, "result":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    if-nez v0, :cond_1

    .line 54
    .end local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p2

    .line 50
    .restart local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getStringSet()Ljava/util/Set;

    move-result-object v1

    .line 51
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    move-object p2, v1

    .line 54
    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
