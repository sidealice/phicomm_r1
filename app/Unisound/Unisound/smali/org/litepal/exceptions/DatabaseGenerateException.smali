.class public Lorg/litepal/exceptions/DatabaseGenerateException;
.super Ljava/lang/RuntimeException;
.source "DatabaseGenerateException.java"


# static fields
.field public static final CLASS_NOT_FOUND:Ljava/lang/String; = "can not find a class named "

.field public static final SQL_ERROR:Ljava/lang/String; = "An exception that indicates there was an error with SQL parsing or execution. "

.field public static final SQL_SYNTAX_ERROR:Ljava/lang/String; = "SQL syntax error happens while executing "

.field public static final TABLE_DOES_NOT_EXIST:Ljava/lang/String; = "Table doesn\'t exist with the name of "

.field public static final TABLE_DOES_NOT_EXIST_WHEN_EXECUTING:Ljava/lang/String; = "Table doesn\'t exist when executing "

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
