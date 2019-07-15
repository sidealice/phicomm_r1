.class public Lcom/phicomm/speaker/f/t;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/f/t$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "myecho"

.field protected static b:Z = false

.field protected static c:I = 0x3

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    sput-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    .line 127
    invoke-static {}, Lcom/phicomm/speaker/f/v;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/f/t;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 625
    sget-object v0, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .line 185
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 189
    sget v1, Lcom/phicomm/speaker/f/t;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v2, v3

    goto :goto_0

    .line 211
    :pswitch_1
    sget-object v1, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 201
    :pswitch_2
    sget-object v1, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 194
    :pswitch_3
    sget-object v1, Lcom/phicomm/speaker/f/t$a;->d:Lcom/phicomm/speaker/f/t$a;

    if-ne p0, v1, :cond_0

    .line 222
    :goto_0
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "("

    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    .line 230
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "( "

    .line 232
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ": "

    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " : "

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_2

    const-string p2, "line.separator"

    .line 240
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_2
    sget-object p2, Lcom/phicomm/speaker/f/t;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    .line 251
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 254
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "    "

    .line 258
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "    "

    .line 259
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {p0}, Lcom/phicomm/speaker/f/t$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "    "

    .line 261
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "    "

    .line 263
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 267
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 4

    .line 172
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->b:Lcom/phicomm/speaker/f/t$a;

    sget-object v2, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 319
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    sget-object v2, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 159
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const-string v0, ""

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->b:Lcom/phicomm/speaker/f/t$a;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 347
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    sget-object v2, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    invoke-static {v1, v2, p0, p1}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 713
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    invoke-static {}, Lcom/phicomm/speaker/f/t;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "rongyu"

    const/4 v1, 0x0

    .line 714
    invoke-static {v0, p0, v1, p1}, Lcom/phicomm/speaker/f/ae;->a(Ljava/lang/String;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "jsbridge"

    .line 687
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .line 427
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    sget-object v2, Lcom/phicomm/speaker/f/t;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 304
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const-string v0, ""

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 412
    sget-boolean v0, Lcom/phicomm/speaker/f/t;->b:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const-string v0, ""

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 414
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 697
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    invoke-static {}, Lcom/phicomm/speaker/f/t;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 698
    invoke-static {p0, p1, v0}, Lcom/phicomm/speaker/f/ae;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 708
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    invoke-static {}, Lcom/phicomm/speaker/f/t;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/phicomm/speaker/f/t;->a(Lcom/phicomm/speaker/f/t$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 709
    invoke-static {p0, p1, v0}, Lcom/phicomm/speaker/f/ae;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
