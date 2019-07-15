.class public Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;
.super Ljava/lang/Object;
.source "PreferenceUtil.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.phicomm.speaker.player"

.field public static final KEY_VALUES:Ljava/lang/String; = "key_result"

.field public static final METHOD_CONTAIN_KEY:Ljava/lang/String; = "method_contain_key"

.field public static final METHOD_EIDIT_VALUE:Ljava/lang/String; = "method_edit"

.field public static final METHOD_QUERY_PID:Ljava/lang/String; = "method_query_pid"

.field public static final METHOD_QUERY_VALUE:Ljava/lang/String; = "method_query_value"

.field public static final URI:Landroid/net/Uri;

.field public static final sContentChanged:Landroid/net/Uri;

.field public static final sContentCreate:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "content://com.phicomm.speaker.player"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    .line 18
    sget-object v0, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->sContentCreate:Landroid/net/Uri;

    .line 20
    sget-object v0, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v1, "changed"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->sContentChanged:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preferName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
