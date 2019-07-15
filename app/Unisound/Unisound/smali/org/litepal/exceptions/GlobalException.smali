.class public Lorg/litepal/exceptions/GlobalException;
.super Ljava/lang/RuntimeException;
.source "GlobalException.java"


# static fields
.field public static final APPLICATION_CONTEXT_IS_NULL:Ljava/lang/String; = "Application context is null. Maybe you haven\'t configured your application name with \"org.litepal.LitePalApplication\" in your AndroidManifest.xml. Or you can call LitePalApplication.initialize(Context) method instead."

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
