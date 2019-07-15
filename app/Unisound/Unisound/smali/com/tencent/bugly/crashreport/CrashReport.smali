.class public Lcom/tencent/bugly/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;,
        Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    return-void
.end method

.method public static closeBugly()V
    .locals 2

    .prologue
    .line 274
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_1

    .line 275
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not close bugly because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_3

    .line 289
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->unregister(Landroid/content/Context;)V

    .line 292
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->closeCrashReport()V

    .line 294
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;)V

    .line 296
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/w;->b()V

    goto :goto_0
.end method

.method public static closeCrashReport()V
    .locals 2

    .prologue
    .line 258
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not close crash report because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->d()V

    goto :goto_0
.end method

.method public static closeNativeReport()V
    .locals 2

    .prologue
    .line 225
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not close native report because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->f()V

    goto :goto_0
.end method

.method public static enableBugly(Z)V
    .locals 0

    .prologue
    .line 48
    sput-boolean p0, Lcom/tencent/bugly/b;->a:Z

    .line 49
    return-void
.end method

.method public static getAllUserDataKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get all keys of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 483
    :goto_0
    return-object v0

    .line 478
    :cond_0
    if-nez p0, :cond_1

    .line 479
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "getAllUserDataKeys args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 483
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 636
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get App channel because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "unknown"

    .line 645
    :goto_0
    return-object v0

    .line 639
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v0, "unknown"

    goto :goto_0

    .line 645
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 512
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get App ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "unknown"

    .line 521
    :goto_0
    return-object v0

    .line 515
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "unknown"

    goto :goto_0

    .line 521
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 617
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get app version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v0, "unknown"

    .line 626
    :goto_0
    return-object v0

    .line 620
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v0, "unknown"

    goto :goto_0

    .line 626
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string v0, "Please call with context."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 114
    const-string v0, "unknown"

    .line 117
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    .line 117
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdkExtraData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 696
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 704
    :goto_0
    return-object v0

    .line 699
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static getSdkExtraData(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 714
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 721
    :goto_0
    return-object v0

    .line 717
    :cond_0
    if-nez p0, :cond_1

    .line 718
    const-string v0, "Context should not be null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 719
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v0, "unknown"

    .line 364
    :goto_0
    return-object v0

    .line 355
    :cond_0
    if-nez p0, :cond_1

    .line 356
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "getUserDataValue args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v0, "unknown"

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 493
    sget-boolean v1, Lcom/tencent/bugly/b;->a:Z

    if-nez v1, :cond_0

    .line 494
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "Can not get size of user data because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return v0

    .line 497
    :cond_0
    if-nez p0, :cond_1

    .line 498
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "getUserDatasSize args context should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->D()I

    move-result v0

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 598
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v0, "unknown"

    .line 607
    :goto_0
    return-object v0

    .line 601
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v0, "unknown"

    goto :goto_0

    .line 607
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 331
    sget-boolean v1, Lcom/tencent/bugly/b;->a:Z

    if-nez v1, :cond_0

    .line 332
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "Can not get user scene tag because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return v0

    .line 335
    :cond_0
    if-nez p0, :cond_1

    .line 336
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "getUserSceneTagId args context should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->H()I

    move-result v0

    goto :goto_0
.end method

.method public static initCrashReport(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 60
    invoke-static {p0}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    .prologue
    .line 70
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 72
    invoke-static {p0, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 73
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    goto :goto_0
.end method

.method public static isLastSessionCrash()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 658
    sget-boolean v1, Lcom/tencent/bugly/b;->a:Z

    if-nez v1, :cond_0

    .line 659
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "The info \'isLastSessionCrash\' is not accurate because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return v0

    .line 663
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 664
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static postCatchedException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 180
    return-void
.end method

.method public static postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 189
    return-void
.end method

.method public static postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 199
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not post crash caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    if-nez p0, :cond_2

    .line 210
    const-string v0, "throwable is null, just return"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_2
    if-nez p1, :cond_3

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 217
    :goto_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    move-object v2, p0

    move-object v5, v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method private static putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/16 v7, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 726
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const-string v0, "[a-zA-Z[0-9]]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 731
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "putSdkData key length over limit %d, will be cutted."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_3

    .line 736
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "putSdkData value length over limit %d, will be cutted!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 741
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v1, "[param] putSdkData data: %s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 376
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not put user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_0
    return-void

    .line 380
    :cond_0
    if-nez p0, :cond_1

    .line 381
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "putUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_1
    if-nez p1, :cond_2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    const-string v0, "putUserData args key should not be null or empty"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_2
    if-nez p2, :cond_3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    const-string v0, "putUserData args value should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "putUserData args key should match [a-zA-Z[0-9]]+  {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 403
    const-string v0, "user data value length over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 408
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 412
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_6

    .line 414
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "replace KV %s %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 422
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->D()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 423
    const-string v0, "user data size is over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 428
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_9

    .line 429
    const-string v0, "user data key length over limit %d , will drop this new key %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 435
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_a

    .line 437
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    :cond_a
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "[param] set user data: %s - %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 451
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not remove user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "unknown"

    .line 464
    :goto_0
    return-object v0

    .line 454
    :cond_0
    if-nez p0, :cond_1

    .line 455
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "removeUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v0, "unknown"

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_2
    const-string v0, "[param] remove user data: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 464
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 832
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_1

    .line 833
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App channel because Bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    if-nez p0, :cond_2

    .line 837
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppChannel args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_2
    if-nez p1, :cond_3

    .line 841
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "App channel is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 846
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAppPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 859
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_1

    .line 860
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    if-nez p0, :cond_2

    .line 864
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppPackage args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    :cond_2
    if-nez p1, :cond_3

    .line 868
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "App package is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 873
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAppVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 805
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_1

    .line 806
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    if-nez p0, :cond_2

    .line 810
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppVersion args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    :cond_2
    if-nez p1, :cond_3

    .line 814
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "App version is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 817
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 819
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAuditEnable(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 928
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 929
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_0
    return-void

    .line 932
    :cond_0
    if-nez p0, :cond_1

    .line 933
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppPackage args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set audit enable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Z

    goto :goto_0
.end method

.method public static setBuglyDbName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 913
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 914
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set DB name because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set Bugly DB name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sput-object p0, Lcom/tencent/bugly/proguard/q;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 649
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 650
    return-void
.end method

.method public static setCrashFilter(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 885
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 886
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set crash stack filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    sput-object p0, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setCrashRegularFilter(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 899
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 900
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set crash stack filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sput-object p0, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setIsAppForeground(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 749
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 750
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set \'isAppForeground\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 753
    :cond_0
    if-nez p0, :cond_1

    .line 754
    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 757
    :cond_1
    if-eqz p1, :cond_2

    .line 758
    const-string v0, "App is in foreground."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 762
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Z)V

    goto :goto_0

    .line 760
    :cond_2
    const-string v0, "App is in background."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setIsDevelopmentDevice(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 770
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set \'isDevelopmentDevice\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_0
    return-void

    .line 773
    :cond_0
    if-nez p0, :cond_1

    .line 774
    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    :cond_1
    if-eqz p1, :cond_2

    .line 778
    const-string v0, "This is a development device."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 782
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->y:Z

    goto :goto_0

    .line 780
    :cond_2
    const-string v0, "This is not a development device."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

    move-result v0

    return v0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 975
    if-nez p0, :cond_0

    .line 976
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "WebView is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0

    .line 979
    :cond_0
    new-instance v0, Lcom/tencent/bugly/crashreport/CrashReport$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/CrashReport$1;-><init>(Landroid/webkit/WebView;)V

    .line 1008
    invoke-static {v0, p1, p2}, Lcom/tencent/bugly/crashreport/CrashReport;->setJavascriptMonitor(Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static setJavascriptMonitor(Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;Z)Z
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setJavascriptMonitor(Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;ZZ)Z

    move-result v0

    return v0
.end method

.method public static setJavascriptMonitor(Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;ZZ)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1047
    if-nez p0, :cond_0

    .line 1048
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "WebViewInterface is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_0
    return v0

    .line 1051
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1052
    const-string v1, "CrashReport has not been initialed! please to call method \'initCrashReport\' first!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    :cond_1
    const-string v2, "Set Javascript exception monitor of webview."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1057
    sget-boolean v2, Lcom/tencent/bugly/b;->a:Z

    if-nez v2, :cond_2

    .line 1058
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "Can not set JavaScript monitor because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1061
    :cond_2
    const-string v2, "URL of webview is %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1065
    if-nez p2, :cond_3

    .line 1066
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1067
    const/16 v3, 0x13

    if-ge v2, v3, :cond_3

    .line 1068
    const-string v1, "This interface is only available for Android 4.4 or later."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1073
    :cond_3
    const-string v2, "Enable the javascript needed by webview monitor."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1074
    invoke-interface {p0, v1}, Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;->setJavaScriptEnabled(Z)V

    .line 1075
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/crash/h5/H5JavaScriptInterface;->getInstance(Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;)Lcom/tencent/bugly/crashreport/crash/h5/H5JavaScriptInterface;

    move-result-object v2

    .line 1076
    if-eqz v2, :cond_4

    .line 1077
    const-string v3, "Add a secure javascript interface to the webview."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1078
    const-string v3, "exceptionUploader"

    invoke-interface {p0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;->addJavascriptInterface(Lcom/tencent/bugly/crashreport/crash/h5/H5JavaScriptInterface;Ljava/lang/String;)V

    .line 1080
    :cond_4
    if-eqz p1, :cond_6

    .line 1081
    const-string v2, "Inject bugly.js(v%s) to the webview."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/h5/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1082
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/h5/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 1083
    if-nez v2, :cond_5

    .line 1084
    const-string v2, "Failed to inject Bugly.js."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/h5/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1087
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport$WebViewInterface;->loadUrl(Ljava/lang/String;)V

    :cond_6
    move v0, v1

    .line 1089
    goto/16 :goto_0
.end method

.method public static setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 679
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_1

    .line 680
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not put SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSessionIntervalMills(J)V
    .locals 2

    .prologue
    .line 791
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 792
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set \'SessionIntervalMills\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->a(J)V

    goto :goto_0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 550
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_1

    .line 551
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    if-nez p0, :cond_2

    .line 555
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Context should not be null when bugly has not been initialed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :cond_2
    if-nez p1, :cond_3

    .line 559
    const-string v0, "userId should not be null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 563
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 564
    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v0

    .line 570
    :cond_4
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->b(Ljava/lang/String;)V

    .line 576
    const-string v0, "[user] set userId : %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 579
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_5

    .line 581
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    .line 585
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->a()V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 530
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 531
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set tag caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 312
    :cond_0
    if-nez p0, :cond_1

    .line 313
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setTag args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_1
    if-gtz p1, :cond_2

    .line 318
    const-string v0, "setTag args tagId should > 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 321
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(I)V

    .line 322
    const-string v0, "[param] set user scene tag: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static startCrashReport()V
    .locals 2

    .prologue
    .line 242
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not start crash report because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->c()V

    goto :goto_0
.end method

.method public static testANRCrash()V
    .locals 2

    .prologue
    .line 162
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not test ANR crash because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "start to create a anr crash for test!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->k()V

    goto :goto_0
.end method

.method public static testJavaCrash()V
    .locals 2

    .prologue
    .line 124
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not test Java crash because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    const/16 v1, 0x5e20

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->b(I)V

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static testNativeCrash()V
    .locals 2

    .prologue
    .line 145
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not test native crash because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    const-string v0, "start to create a native crash for test!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->j()V

    goto :goto_0
.end method
