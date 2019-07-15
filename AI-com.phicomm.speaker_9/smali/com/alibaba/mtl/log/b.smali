.class public Lcom/alibaba/mtl/log/b;
.super Ljava/lang/Object;
.source "UTMCStatConfig.java"


# static fields
.field private static a:Lcom/alibaba/mtl/log/b;


# instance fields
.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private a:Landroid/app/Application;

.field private a:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

.field private mContext:Landroid/content/Context;

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/alibaba/mtl/log/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/b;->a:Lcom/alibaba/mtl/log/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->C:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->D:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->E:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->F:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->a:Landroid/app/Application;

    .line 46
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->G:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->a:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/b;->s:Z

    .line 235
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/b;->t:Z

    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/b;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/mtl/log/b;->a:Lcom/alibaba/mtl/log/b;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 85
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->C:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->D:Ljava/lang/String;

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    const-string v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_lun"

    .line 94
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/alibaba/mtl/log/e/c;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 111
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->E:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->F:Ljava/lang/String;

    .line 115
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    const-string v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_luid"

    .line 120
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/alibaba/mtl/log/e/c;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/b;->s:Z

    if-nez v0, :cond_1

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 200
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->a()Landroid/app/Application;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusRegHelper;->registeActivityLifecycleCallbacks(Landroid/app/Application;)V

    .line 206
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/b;->s:Z

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusRegHelper;->registeActivityLifecycleCallbacks(Landroid/app/Application;)V

    .line 212
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/b;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string v0, "UTEngine"

    const-string v1, "You need set a application instance for UT."

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->a:Landroid/app/Application;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAppApplicationInstance(Landroid/app/Application;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->a:Landroid/app/Application;

    .line 187
    invoke-direct {p0}, Lcom/alibaba/mtl/log/b;->o()V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->G:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 147
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    .line 148
    iget-object p1, p0, Lcom/alibaba/mtl/log/b;->mContext:Landroid/content/Context;

    const-string v0, "UTCommon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "_lun"

    const-string v1, ""

    .line 150
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 154
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/c;->decode([BI)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 156
    iput-object v1, p0, Lcom/alibaba/mtl/log/b;->D:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v0, "_luid"

    const-string v1, ""

    .line 161
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v2}, Lcom/alibaba/mtl/log/e/c;->decode([BI)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 167
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->F:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 173
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/mtl/log/b;->o()V

    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Lcom/alibaba/mtl/log/e/i;->d(Z)V

    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 136
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/b;->c(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/alibaba/mtl/log/b;->d(Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string v2, "UT"

    const/16 v3, 0x3ef

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
