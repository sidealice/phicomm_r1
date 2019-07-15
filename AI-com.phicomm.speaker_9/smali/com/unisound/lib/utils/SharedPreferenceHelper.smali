.class public Lcom/unisound/lib/utils/SharedPreferenceHelper;
.super Ljava/lang/Object;
.source "SharedPreferenceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedPreferenceHelper"

.field private static instance:Lcom/unisound/lib/utils/SharedPreferenceHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 26
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    .line 27
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/lib/utils/SharedPreferenceHelper;
    .locals 2

    const-class v0, Lcom/unisound/lib/utils/SharedPreferenceHelper;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/unisound/lib/utils/SharedPreferenceHelper;->instance:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/unisound/lib/utils/SharedPreferenceHelper;

    invoke-direct {v1, p0, p1}, Lcom/unisound/lib/utils/SharedPreferenceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/unisound/lib/utils/SharedPreferenceHelper;->instance:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    .line 41
    :cond_0
    sget-object p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->instance:Lcom/unisound/lib/utils/SharedPreferenceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringSetValue(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveIntValue(Ljava/lang/String;I)Z
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveLongValue(Ljava/lang/String;J)Z
    .locals 1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveStringSetValue(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/utils/SharedPreferenceHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
