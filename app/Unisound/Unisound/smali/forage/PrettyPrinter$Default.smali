.class Lforage/PrettyPrinter$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lforage/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lforage/PrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Default"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    return-object p1
.end method
