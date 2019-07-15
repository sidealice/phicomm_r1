.class public Lcom/unisound/vui/util/SharedPreferencesHelper;
.super Ljava/lang/Object;


# static fields
.field private static final SP_NAME:Ljava/lang/String; = "defaultSp"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/unisound/vui/util/SharedPreferencesHelper;

.field private static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/util/SharedPreferencesHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->instance:Lcom/unisound/vui/util/SharedPreferencesHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/unisound/vui/util/SharedPreferencesHelper;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/unisound/vui/util/SharedPreferencesHelper;

    monitor-enter v1

    :try_start_0
    const-string v0, "defaultSp"

    invoke-static {p0, v0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/unisound/vui/util/SharedPreferencesHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->instance:Lcom/unisound/vui/util/SharedPreferencesHelper;

    if-nez v0, :cond_0

    const-string v0, "defaultSp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/util/SharedPreferencesHelper;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/util/SharedPreferencesHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->instance:Lcom/unisound/vui/util/SharedPreferencesHelper;

    :cond_0
    sget-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->instance:Lcom/unisound/vui/util/SharedPreferencesHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/unisound/vui/util/SharedPreferencesHelper;

    const-string v1, "defaultSp"

    invoke-direct {v0, p0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/unisound/vui/util/SharedPreferencesHelper;->instance:Lcom/unisound/vui/util/SharedPreferencesHelper;

    return-void
.end method


# virtual methods
.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bool"    # Z

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringSetValue(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalut"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveBooleanValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "booleanValue"    # Z

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveIntValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "intValue"    # I

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLongValue(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longValue"    # J

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveStringSetValue(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "setValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/SharedPreferencesHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
