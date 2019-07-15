.class public Lcn/kuwo/autosdk/q;
.super Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcn/kuwo/autosdk/q;->b(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Lcn/kuwo/autosdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/q;->setTime(J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcn/kuwo/autosdk/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
