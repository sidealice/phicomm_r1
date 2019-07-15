.class public Lcom/alibaba/sdk/android/feedback/xblink/f/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)Lcom/alibaba/sdk/android/feedback/xblink/f/a;
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/f/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/l;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const-class v2, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "WVPluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create plugin error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "WVPluginManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create plugin failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "WVPluginManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create plugin failed, plugin not register or empty, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->b:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "::"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const-string p0, "WVPluginManager"

    const-string p1, "getOriginalPlugin failed, alias is empty."

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a()V
    .locals 4

    const-string v0, "Base"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/a;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXBase"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/b/c;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXApp"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/b/a;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXCommunication"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/b/d;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXPageAction"

    const-string v1, "createNewPage"

    const-string v2, "WXApp"

    const-string v3, "createNewPage"

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WXCamera"

    const-string v1, "takePhoto"

    const-string v2, "WVCamera"

    const-string v3, "takePhoto"

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WXCamera"

    const-string v1, "photoReduce"

    const-string v2, "WVCamera"

    const-string v3, "photoReduce"

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WXCamera"

    const-string v1, "confirmUploadPhoto"

    const-string v2, "WVCamera"

    const-string v3, "confirmUploadPhoto"

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WXPhoto"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXMediaRecorder"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXMediaPlayer"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXDevice"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/d;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXFeedBack"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/g;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXLogin"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/j;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXMsg"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXLog"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/i;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXTrack"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/y;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WVToolBarManager"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/b;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXErrorPage"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/f;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXEncriptionTool"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/e;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "WXKeyboard"

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/h;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/f/l;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/l;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object p1, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a:Ljava/util/Map;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WVPluginManager"

    const-string p1, "registerAlias quit, this is no original plugin or alias is invalid."

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
