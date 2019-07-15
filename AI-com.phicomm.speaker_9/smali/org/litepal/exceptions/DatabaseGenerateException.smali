.class public Lorg/litepal/exceptions/DatabaseGenerateException;
.super Ljava/lang/RuntimeException;
.source "DatabaseGenerateException.java"


# static fields
.field public static final CLASS_NOT_FOUND:Ljava/lang/String; = "can not find a class named "

.field public static final EXTERNAL_STORAGE_PERMISSION_DENIED:Ljava/lang/String; = "You don\'t have permission to access database at %1$s. Make sure you handled WRITE_EXTERNAL_STORAGE runtime permission correctly."

.field public static final SQL_ERROR:Ljava/lang/String; = "An exception that indicates there was an error with SQL parsing or execution. "

.field public static final SQL_SYNTAX_ERROR:Ljava/lang/String; = "SQL syntax error happens while executing "

.field public static final TABLE_DOES_NOT_EXIST:Ljava/lang/String; = "Table doesn\'t exist with the name of "

.field public static final TABLE_DOES_NOT_EXIST_WHEN_EXECUTING:Ljava/lang/String; = "Table doesn\'t exist when executing "

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
