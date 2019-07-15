.class public Lcom/ta/utdid2/b/a/h;
.super Ljava/lang/Object;
.source "SharedPreferenceHelper.java"


# direct methods
.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
